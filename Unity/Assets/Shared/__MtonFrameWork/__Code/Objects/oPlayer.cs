using UnityEngine        ;
using System             ; //Must use for [Serializable] attr
using System.Collections ;
using MTON.Class         ;
using MTON.Global        ;
using DG.Tweening        ; //import DemiGiant DoTween

namespace MTON.codeObjects{

  [RequireComponent (typeof (CharacterController))]
  [RequireComponent (typeof (cMcanm))] //must have to call mecanim...need fields so can not populate later
    public class oPlayer : MonoBehaviour{

	  public  bool       b_2D    = true         ;
      public  bool       bGround = false        ;
      public  bool       bFaceRt = true         ; // facing Right
      public  Transform  camrXFORM              ; 
      public  GameObject OnDeathPrefab          ;
      private LayerMask  layerGround            ;
      private Vector3    prvPos  = Vector3.zero ;

#region Structs Display Obj, Emitter, Rbody

	  public s_DispOProperties sDP = new s_DispOProperties();
	  [Serializable] //MUST : add so that this custom data type can be displayed in the inspector
      public struct s_DispOProperties{
        //init interface members
        public Animator  dispAnmtr  ;
        public Transform dispXFORM  ; //HACK : Coupling the character dispXFORM => object with an Animator and render mesh
        public Transform riseXFORM  ; 

        public  float yRotOffset_3D ; //-50.0f == default
        public  float   duckSc      ; // scale on crouch/duck
        public  float __initHgt     ;
        public  float __yScale      ; 
        public  float __sclX        ;

	  }

	  public s_EmitProperties sEM = new s_EmitProperties();
	  [Serializable] //MUST : add so that this custom data type can be displayed in the inspector
      public struct s_EmitProperties{

		public float       fireRate ; //0.15f = default
		public Transform[] firePnts ; //firing point

        public cLevel.e_Bllt  eBlt ; // enum for bullet type to emit
        public cLevel.fx_Hit  eGun ; // enum for GunFlare particle system to emit
	    public cLevel.e_Anim  eDst ; // enum for Dust Step  Animator Object to play
	    public cLevel.e_Anim  eDjm ; // enum for Dust Jump  Animator Object to play
	    public cLevel.e_Anim  eDld ; // enum for Dust Land  Animator Object to play
	    public cLevel.e_Anim  eDsl ; // enum for Dust Slide Animator Object to play

	  }

	  public s_RbodyProperties sRB = new s_RbodyProperties(3.0f, 4.25f, 4.25f, 3.0f, 1.0f); //set default
	  [Serializable] //MUST : add so that this custom data type can be displayed in the inspector
      public struct s_RbodyProperties{

        public  float moveForce;
        public  float jumpForce;
        public  float flapForce;
        public  float dashForce;
        public  float massForce;

		public s_RbodyProperties(float mv, float jp, float fp, float df, float mf){
		  this.moveForce = mv ;
          this.jumpForce = jp ;
          this.flapForce = fp ;
          this.dashForce = df ;
          this.massForce = mf ;
		}
	  }

	  private void init_cRbody(){ //inits this cRbody settings
		rb.moveForce   = sRB.moveForce                              ;
		rb.jumpForce   = sRB.jumpForce                              ;
		rb.flapForce   = sRB.flapForce                              ;
		rb.dashForce   = sRB.dashForce                              ;
		rb.massForce   = sRB.massForce                              ;
      }

#endregion

#region oPlayer Delegates
      private void OnEnable(){

        this.gameObject.SetActive(true);

        //direct input
        io.OnDPAD_DIR_Delegate += doMove;
        io.OnDPAD_AIM_Delegate += doAimd;
        io.OnJumpDelegate      += doJump;
        io.OnAttkDelegate      += doAttk; //NOTE: Interesting that doAttk executes, then io.OnAttkDelegate executes???
        io.OnPowrDelegate      += doPowr;
        io.OnActVDelegate      += doActV; //Attack Visual = hitFlash

        //rigidbody events
        rb.OnGround_Delegate   += doGround;
        rb.OnCeilng_Delegate   += doCeilng;

        //health logic
        ht.OnHitdDelegate      += this.doHitd;
        ht.OnDethDelegate      += this.doDead;

        //animation : input + character/env state
        an.OnDuckDelegate      += doCrouch;
        an.OnFaceDelegate      += doFace;
        an.OnRiseDelegate      += doRise;
        an.OnIdlVDelegate      += doIdlV;
        an.OnIdlHDelegate      += doIdlH;
        an.OnFootDelegate      += doFoot;
      }

      private void OnDisable(){

        //direct input
        io.OnDPAD_DIR_Delegate -= doMove;
        io.OnDPAD_AIM_Delegate -= doAimd;
        io.OnJumpDelegate      -= doJump; //NOTE: remember to remove delegate in case of wierd memory leaks
        io.OnAttkDelegate      -= doAttk;
        io.OnPowrDelegate      -= doPowr;
        io.OnActVDelegate      -= doActV; //Attack Visual = hitFlash

        //rigidbody events
        rb.OnGround_Delegate   -= doGround;
        rb.OnCeilng_Delegate   -= doCeilng;

        //health logic
        ht.OnHitdDelegate      -= this.doHitd;
        ht.OnDethDelegate      -= this.doDead;

        //animation : input + character/env state
        an.OnDuckDelegate      -= doCrouch;
        an.OnFaceDelegate      -= doFace;
        an.OnRiseDelegate      -= doRise;
        an.OnIdlVDelegate      -= doIdlV;
        an.OnIdlHDelegate      -= doIdlH;
        an.OnFootDelegate      -= doFoot;
      }

#endregion

#region oPlayer Component Manager

      protected CharacterController cControl ;
      protected Transform           xform    ;
      protected Renderer            rendr    ;
      protected Color               cColr    ;
      protected cInput              io       ; //protected; can be replaced with ai; vs. input controller
      protected cRbody              rb       ; //protected; to access collider volume info

      protected cAnimn  an    ;
      private cEquip    eq    ;
      private cHealth   ht    ;
      private cTween    tw    ;
      private cMcanm    mc    ; //mecanim handler

      private cEmit_Audio     au ;


      public virtual void Awake(){

        rendr = this.sDP.dispXFORM.GetComponent<Renderer>();
        //      cColr = rendr.material.color;
        layerGround = LayerMask.GetMask (__gCONSTANT._FLOOR);
        init_Components()                                        ;
		init_cRbody();
        xform         = this.GetComponent<Transform>()           ;
        cControl      = this.GetComponent<CharacterController>() ;
        this.sDP.__initHgt  = cControl.height;

        if(this.sDP.dispXFORM == null){
          Debug.LogError(this + " AWAKE: Display Object(Animator + Render Mesh) NOT ASSIGNED MANUALLY.");
          this.sDP.dispXFORM = this.xform;
          if(this.sDP.dispXFORM == null){
            Debug.LogError(this + " AWAKE: Display Object(Animator + Render Mesh) attempting to auto assign this.transform : SUCCESSFUL ");
          }
          else{
            Debug.LogError(this + " AWAKE: Display Object(Animator + Render Mesh) attempting to auto assign this.transform : FAILED     ");
          }
        }
        this.sDP.__yScale = this.sDP.dispXFORM.localScale.y;
        this.sDP.__sclX   = this.sDP.dispXFORM.localScale.x;

      }

      public virtual void Start(){
        __gUtility.CheckAndInitLayer(this.gameObject, __gCONSTANT._PLAYER) ; // HACK :level triggers/hint should ignore ground raycast/collision check!
        if(OnDeathPrefab == null){
          //		Debug.Log ("OnEnable DeathPrefab : " + (int)cLevel.e_Icon.Death + OnDeathPrefab);
          OnDeathPrefab = __gCONSTANT._LEVEL.e_Icons[(int)cLevel.e_Icon.Death].gameObject;
        }
      }


#endregion

#region FixedUPDATE

      public virtual void FixedUpdate(){

        Vector3 curPos = xform.position;
        if(!bGround){                        //Not on Ground :check vertical state
          float kY = curPos.y - prvPos.y;
          if(kY>0.05f){                   //rising
            an.vState = cAnimn.eStateV.Rise;
			an.doVelY(1.0f);
          }
          else if(kY<-0.05f){             //falling
            an.vState = cAnimn.eStateV.Fall;
			an.doVelY(-1.0f);
          }
          else{
            an.vState = cAnimn.eStateV.Apex;
		    an.doVelY(0.0f);
          }
        }
        else{                                //On Ground
          an.vState = cAnimn.eStateV.Idle;
		  an.doVelY(0.0f);
        }
        prvPos = curPos;

      }

#endregion

#region oPlayer moveset Function
      ///---------------------------------------TRANSFORMING CHARACTER--------------------------------------------------------------/// 

      public virtual void doAimd(Vector3 aimdDir){ //Handles movement and facing
        Vector3 unitDir = aimdDir.normalized ;
        an.doAimg(unitDir.y)                 ;
      }

      public virtual void doMove(Vector3 moveDir){ //Handles movement and facing
	    rb.Move(moveDir);
        this.xform.SetPosZ(0.0f); // force into 0.0f zPlane so character doesn't slip
        // horizontal move state
        if(Mathf.Abs(moveDir.x) > 0.001f){

          an.hState = cAnimn.eStateH.Walk ; //triggering animation for walk
          if(bGround == true){ // check for footsteps
            bool bFoot = mc.GetCurvefBool(mc._fAudio0_ID); //IMPORTANT : Implicit that run animation has fCurve where 0==off, 1==on
            if(bFoot == true){
              an.footST = cAnimn.eStateB.DN;
            }
            else{
              an.footST = cAnimn.eStateB.Idle;
            }
          }
          if(Mathf.Sign(moveDir.x) > 0.0f){
            an.fState = cAnimn.eStateF.Rght;
          }
          else{
            an.fState = cAnimn.eStateF.Left;
          }
        }
        else{
          an.fState = cAnimn.eStateF.Idle;
          if(this.bDpdX == true){ //prevents spamming of Idle
            an.hState = cAnimn.eStateH.Idle;
          }
        }
        //duck/crouch state
        if(Mathf.Abs(moveDir.y) > 0.001f){
          float vertDir = Mathf.Sign(moveDir.y); //y == vAxis  ; Sign return -1.0f or 1.0f
          if(this.bDpdX == true){                // if not on lockdown, then ok to duck
            if(vertDir < 0.0f){
              if(bGround == true){
                an.duckST = cAnimn.eStateB.DN;
              }
            }
          }

        }
        else{
          if(an.vState != cAnimn.eStateV.Rise){
            an.duckST = cAnimn.eStateB.Idle;
          }
        }
      }

      public virtual void doJump(bool bJump){
        if(bJump){
          if(bGround){    
            rb.Jump()                     ;
            an.jumpST = cAnimn.eStateB.DN ;
            fx_Dust(this.sEM.eDjm, true)      ;
          }
          else{
            rb.Flap()                     ; //flap when not on ground
            an.jumpST = cAnimn.eStateB.UP ;
          }
        }
        else{
          an.jumpST = cAnimn.eStateB.Idle ;
        }
      }

      public virtual void doAttk(bool bAttk){
        if(bAttk){
          if(this.sEM.firePnts.Length > 0){
            an.attkST          = cAnimn.eStateB.DN    ;
            Transform firePnt  = this.sEM.firePnts[0] ; //facing right
			Quaternion fireRot = firePnt.rotation     ;
			if(this.bFaceRt == false){                                      //Brute force guessing; Understanding of matrix not high enough
			  Vector3 vRot = firePnt.rotation.eulerAngles                 ;
			  vRot         = new Vector3(vRot.x, vRot.y + 180.0f, vRot.z) ; //MAGIC NUMBER : Why y = 180.0f ??? Likely related to parent -x scale
			  fireRot      = Quaternion.Euler(vRot)                       ;
			}
            firePnt.gameObject.SetActive(true)    ;
            if(this.sEM.eBlt != cLevel.e_Bllt.None){
				  __gCONSTANT._LEVEL.Emit_Bullet(this.sEM.eBlt, firePnt.position, fireRot, ()=>{
                  return true ;
			  })              ;
            }
            if(this.sEM.eGun != cLevel.fx_Hit.None){ // set to -1 to prevent emission
              __gCONSTANT._LEVEL.Emit_pFX(this.sEM.eGun, firePnt.position, Quaternion.identity, ()=>{
                  firePnt.gameObject.SetActive(false) ;
                  return true                         ;
                  })                                  ;
            }
          }
        }
        else{
		  if(this.bpowr){ 
		    an.attkST = cAnimn.eStateB.PW  ; //Power up attack
		  }
		  else{
            an.attkST = cAnimn.eStateB.Idle;
		  }
        }
      }

      private float stepDrtn = 0.0f;
      private bool mt_TimeStep(float stepIncm){
        if(Time.time > stepDrtn){
          stepDrtn  = Time.time + stepIncm ;
          return true                      ;    
        }
        else{
          return false                     ;
        }
      }


      private bool bpowr         = false              ;
      private bool bDpdX         = true               ;
      private bool bDpdY         = false              ;

      private Vector3 vDstOffSet = Vector3.up * 1.85f ;
      public virtual void doPowr(bool bPowr){
        this.bpowr = bPowr;
        if(bPowr == true){
          StartCoroutine(WhileRapidFire());
          this.bDpdX = false; //dPad x ignore
          this.bDpdY = true ; //dPad y listen
          if(this.bGround == true){
            fx_Dust(this.sEM.eDld, true);
          }
        }
        else{
          this.bDpdX = true  ; //dPad x listen
          this.bDpdY = false ; //dPad x ignore
		  
        }
      }

      private void fx_Dust(cLevel.fx_Hit IN_FX, bool bFLIP_2D = false){
        if(IN_FX != cLevel.fx_Hit.None){ // set to -1 to prevent emission
          __gCONSTANT._LEVEL.Emit_pFX(IN_FX, this.transform.position, Quaternion.identity, ()=>{
              return true ;
              }, bFLIP_2D) ;
        }
      }

	  private void fx_Dust(cLevel.e_Anim IN_FX, bool bFLIP_2D = false){
		Quaternion qRot = Quaternion.identity;
		if(bFLIP_2D == true){
		  if(this.bFaceRt == false){
		    qRot = Quaternion.Euler(Vector3.up); // HACK : Passing anything other than identity signals negative scale
		  }
		}
        if(IN_FX != cLevel.e_Anim.None){ // set to -1 to prevent emission
		  __gCONSTANT._LEVEL.Emit_ANM(IN_FX, this.transform.position, qRot, ()=>{
              return true ;
              }, bFLIP_2D) ;
        }
      }

      public IEnumerator WhileRapidFire(){
        while(this.bpowr == true){
          an.hState = cAnimn.eStateH.Plnt;
          this.doMove(Vector3.zero);
          if(this.mt_TimeStep(this.sEM.fireRate)){
            //	      Debug.Log ("Rapid Fire : " + Time.time); //HACK : time print doesn't match fireRate why???
            this.doAttk(true);
          }
		  else{
		    this.doAttk(false);
		  }
          yield return null;
        }
//		Debug.Log ("NO MORE RAPID FIRE"); //Only called once after while loop is complete
        an.doAimg(0.0f)                 ; //reset gun to face forward
		an.attkST = cAnimn.eStateB.Idle ; //release attack from powerup
      }

      public virtual void doCrouch(bool bDuck){
        if(this.b_2D == false){
          if(bDuck){
            tw.doCrouch(this.sDP.__yScale * this.sDP.duckSc, 0.5f);
          }
          else{
            tw.doCrouch(this.sDP.__yScale);
          }
        }
        if(bDuck){
          fx_Dust(this.sEM.eDld, true);
        }	
      }


      public virtual void doFace(Vector3 vFace){ //for 2D facing, use x
        if(vFace.x > 0.0f){ // Mathf.Epsilon){
          this.bFaceRt = true;
          if(this.b_2D == true){
            //		  this.dispXFORM.rotation = Quaternion.Euler(new Vector3(0.0f, vFace.x * this.sDP.yRotOffset_3D, 0.0f));
            this.sDP.dispXFORM.SetScaleX(this.sDP.__sclX);
          }
          else{
            tw.doRotateTo(new Vector3(0.0f, vFace.x * this.sDP.yRotOffset_3D, 0.0f));
          }
        }
        else if(vFace.x < 0.0f){ //-Mathf.Epsilon){
          this.bFaceRt = false;
          if(this.b_2D == true){
            //		  this.dispXFORM.rotation = Quaternion.Euler(new Vector3(0.0f, vFace.x * this.sDP.yRotOffset_3D, 0.0f));
            this.sDP.dispXFORM.SetScaleX(-this.sDP.__sclX);
          }
          else{
            tw.doRotateTo(new Vector3(0.0f, vFace.x * this.sDP.yRotOffset_3D, 0.0f));
          }
        }
        else{
          if(b_2D == false){ //Not 2D; play with rotation offset
            if(this.bFaceRt == true){
              tw.doRotateTo(new Vector3(0.0f, this.sDP.yRotOffset_3D * 0.65f, 0.0f));
            }
            else{
              tw.doRotateTo(new Vector3(0.0f, this.sDP.yRotOffset_3D * -0.65f, 0.0f));
            }
          }
        }
        }

        public virtual void doFall()  {}

        public virtual void doIdlV(bool bIdlV){
          if(bIdlV == true){
            if(this.sDP.riseXFORM != null){
              this.sDP.dispXFORM.gameObject.SetActive(true)  ; //Sudden landing visual swap out
              this.sDP.riseXFORM.gameObject.SetActive(false) ;
            }
          }
        }

	    public virtual void doIdlH(bool bIdlH){
          if(bIdlH == true){
			if(this.bGround){ // If onGround, kick up dust
		      this.fx_Dust(this.sEM.eDsl, true);
			}
          }
        }

        public virtual void doFoot(bool bFoot){
		  if(bFoot == true){
		    this.fx_Dust(this.sEM.eDst, true);
		  }
		}

        public virtual void doRise(bool bRise){
          if(this.sDP.riseXFORM != null){
            if(bRise == true){
              this.cControl.height = this.sDP.__initHgt * 0.65f ; //on rise tuck collision
              this.sDP.riseXFORM.gameObject.SetActive(true )  ;
              this.sDP.dispXFORM.gameObject.SetActive(false)  ;
            }
            else{
              this.cControl.height = this.sDP.__initHgt        ; //on fall expand collision...else bouncy on ground
              this.sDP.riseXFORM.gameObject.SetActive(false) ;
              this.sDP.dispXFORM.gameObject.SetActive(true ) ;
            }
          }
        }

        public virtual void doHitd(int iHurt){
          rb.Jump()                       ;
          an.lState = cAnimn.eStateL.Hitd ;
          //	  Debug.Log(this + " OOOCH!!! ");
        }

        public virtual void doDead(bool bDead){
          an.lState = cAnimn.eStateL.Dead  ;
          this.gameObject.SetActive(false) ;
          __gCONSTANT._LEVEL.SpawnObj(cLevel.e_Icon.Death, this.transform.position, this.transform.rotation, (Transform SpawnedObj)=>{
              float randomF = UnityEngine.Random.Range(1.0f, 3.0f)           ;
              SpawnedObj.position += Vector3.up * 0.5f * randomF ; // lift slightly off ground to allow for spin and pop
              return true                                        ;
              })                                                 ;
        }

        public virtual void doGround(bool IN_GROUND){
          this.bGround = IN_GROUND;
          if(IN_GROUND == true){
            an.grndST = cAnimn.eStateB.DN;
			this.fx_Dust(this.sEM.eDld, true);
          }
          if(IN_GROUND == false){
            an.grndST = cAnimn.eStateB.UP;
          }
        }

        public virtual void doCeilng(bool IN_CEILING){
          if(IN_CEILING == true){
            an.ceilST = cAnimn.eStateB.DN;
          }
          if(IN_CEILING == false){
            an.ceilST = cAnimn.eStateB.Idle;
          }
        }

#endregion

        public void doActV(bool bActvV){
          if(bActvV == true){
            if(rendr != null){
              rendr.material.color = Color.blue;
            }
          }
          else{
            if(rendr != null){
              //          rendr.material.color = cColr;
            }
          }
        }


#region Class Utility

        public virtual void init_Components(){

          rb = __gUtility.AddComponent_mton<cRbody>(this.gameObject)  ; 
          ht = __gUtility.AddComponent_mton<cHealth>(this.gameObject) ; //HACK : Order matters, must be before an because of delegates
          an = __gUtility.AddComponent_mton<cAnimn>(this.gameObject)  ;
          //      eq = __gUtility.AddComponent_mton<cEquip>(this.gameObject)  ;
          io = __gUtility.AddComponent_mton<cInput>(this.gameObject)  ;
          if(this.b_2D == false){
            tw = __gUtility.AddComponent_mton<cTween>(this.sDP.dispXFORM.gameObject)   ; //Tweening display obj vs. character controller
          }
          mc = __gUtility.AddComponent_mton<cMcanm>(this.gameObject)  ;

          mc.anST = an;
          if(this.sDP.dispAnmtr == null){ //will try to grab from display object if not assigned
            this.sDP.dispAnmtr = this.sDP.dispXFORM.gameObject.GetComponent<Animator>();
          }
          mc.anim = this.sDP.dispAnmtr;

          au = __gUtility.AddComponent_mton<cEmit_Audio>(this.gameObject)  ;

          rendr = this.sDP.dispXFORM.gameObject.GetComponent<Renderer>()   ; //Get Renderer Component

        }

        public Transform GetDispXFORM(){ return this.sDP.dispXFORM; }
        public Transform GetCamrXFORM(){ return this.camrXFORM; }
        public Transform GetRiseXFORM(){ return this.sDP.riseXFORM; }

#endregion

        }

      }
