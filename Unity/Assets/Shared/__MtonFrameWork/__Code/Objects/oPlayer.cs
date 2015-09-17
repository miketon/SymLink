using UnityEngine        ;
using System             ; //Must use for [Serializable] attr
using System.Collections ;
using MTON.Class         ;
using MTON.Global        ;
using DG.Tweening        ; //import DemiGiant DoTween

namespace MTON.codeObjects{

  [RequireComponent (typeof (CharacterController))]
    [RequireComponent (typeof (cMcanm))  ] //must have to call mecanim...need fields so can not populate later
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

	      public Transform ui_dpRing  ;

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

          public cLevel.e_Bllt[]  eBlt ; // enum for bullet type to emit
		  public cLevel.e_Slams eSlm ; // enum for thomper/slam attack
          public cLevel.e_psFX  eGun ; // enum for GunFlare particle system to emit
          public cLevel.e_Anim  eDst ; // enum for Dust Step  Animator Object to play
          public cLevel.e_Anim  eDjm ; // enum for Dust Jump  Animator Object to play
          public cLevel.e_Anim  eDld ; // enum for Dust Land  Animator Object to play
          public cLevel.e_Anim  eDsl ; // enum for Dust Slide Animator Object to play

        }

      public s_RbodyProperties sRB = new s_RbodyProperties(3.0f, 4.25f, 4.25f, 3.0f, 1.0f); //set default
      [Serializable] //MUST : add so that this custom data type can be displayed in the inspector
        public struct s_RbodyProperties{

          public  float moveForce ;
          public  float jumpForce ;
          public  float flapForce ;
          public  float dashForce ;
          public  float massForce ;

          public s_RbodyProperties(float mv, float jp, float fp, float df, float mf){
            this.moveForce = mv ;
            this.jumpForce = jp ;
            this.flapForce = fp ;
            this.dashForce = df ;
            this.massForce = mf ;
          }
        }

      private void init_cRbody(){ //inits this cRbody settings
        rb.moveForce   = sRB.moveForce ;
        rb.jumpForce   = sRB.jumpForce ;
        rb.flapForce   = sRB.flapForce ;
        rb.dashForce   = sRB.dashForce ;
        rb.massForce   = sRB.massForce ;
      }

#endregion

#region oPlayer Delegates
      public virtual void OnEnable(){

        this.gameObject.SetActive(true);

        //direct input
        io.OnDPAD_DIR_Delegate += doMove  ;
        io.OnDPAD_AIM_Delegate += doAimd  ;
        io.OnJumpDelegate      += setJump ;
        io.OnAttkDelegate      += setAttk ; //NOTE: Interesting that setAttk executes, then io.OnAttkDelegate executes???
        io.OnPowrDelegate      += setPowr ;
        io.OnActVDelegate      += setActV ; //Attack Visual = hitFlash

        //rigidbody events
        rb.OnGround_Delegate   += setGround ;
        rb.OnCeilng_Delegate   += setCeilng ;
        rb.OnStunnd_Delegate   += setStunnd ;

        //health logic
        ht.OnHitdDelegate      += this.doHitd  ;
        ht.OnDethDelegate      += this.setDead ;

        //animation : input + character/env state
        an.OnDuckDelegate      += setCrouch ;
        an.OnFaceDelegate      += doFace    ;
        an.OnRiseDelegate      += setRise   ;
        an.OnIdlVDelegate      += setIdlV   ;
        an.OnIdlHDelegate      += setIdlH   ;
        an.OnFootDelegate      += setFoot   ;
        an.OnTrigDelegate      += doTrig    ;
		
		//radar trigger logic
        an.OnStllDelegate      += setStill  ;
		io.On__IODelegate      += set__IO   ;

		//radar
		rd.OnRadar_Delegate    += setRadar  ;
      }

      public virtual void OnDisable(){

        //direct input
        io.OnDPAD_DIR_Delegate -= doMove  ;
        io.OnDPAD_AIM_Delegate -= doAimd  ;
        io.OnJumpDelegate      -= setJump ; //NOTE: remember to remove delegate in case of wierd memory leaks
        io.OnAttkDelegate      -= setAttk ;
        io.OnPowrDelegate      -= setPowr ;
        io.OnActVDelegate      -= setActV ; //Attack Visual = hitFlash

        //rigidbody events
        rb.OnGround_Delegate   -= setGround ;
        rb.OnCeilng_Delegate   -= setCeilng ;

        //health logic
        ht.OnHitdDelegate      -= this.doHitd  ;
        ht.OnDethDelegate      -= this.setDead ;

        //animation : input + character/env state
        an.OnDuckDelegate      -= setCrouch ;
        an.OnFaceDelegate      -= doFace    ;
        an.OnRiseDelegate      -= setRise   ;
        an.OnIdlVDelegate      -= setIdlV   ;
        an.OnIdlHDelegate      -= setIdlH   ;
        an.OnFootDelegate      -= setFoot   ;
        an.OnTrigDelegate      -= doTrig    ;

		//radar logic
        an.OnStllDelegate      -= setStill  ;
		io.On__IODelegate      -= set__IO   ;
      }

#endregion

#region oPlayer Component Manager

      protected CharacterController cControl ;
      protected Transform           xform    ;
      protected Renderer            rendr    ;
      protected Color               cColr    ;
      protected cInput              io       ; //protected; can be replaced with ai; vs. input controller
      protected cRbody              rb       ; //protected; to access collider volume info

      protected cAnimn   an ; // Animation Listener making public so other components can access delegates...
      protected cMcanm   mc ; // mecanim handler
	  public    oEmitter fp ;
	  public    cRadar   rd ; // Auto detection for homing and other functions
      private   cEquip   eq ;
      private   cHealth  ht ;
      private   cTween   tw ;

      private cEmit_Audio au ;

      public virtual void Awake(){

        rendr = this.sDP.dispXFORM.GetComponent<Renderer>()      ;
        //      cColr = rendr.material.color                     ;
        layerGround = LayerMask.GetMask (__gCONSTANT._FLOOR)     ;
        init_Components()                                        ;
        init_cRbody()                                            ;
        xform         = this.GetComponent<Transform>()           ;
        cControl      = this.GetComponent<CharacterController>() ;
        this.sDP.__initHgt  = cControl.height                    ;

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
          OnDeathPrefab = __gCONSTANT._LEVEL.sPL.e_Icons[(int)cLevel.e_Icon.Death].gameObject;
        }
      }


#endregion


#region RADARLOGIC

	public virtual void set__IO(bool b__IO ){
	  if(this.bGround){       // doRadr on input, if player is on ground
	    this.msgRadr(!b__IO); // negate because if input, don't radar
	  }
	}

	public virtual void setStill(bool bStll ){
	  if(this.bGround){      // doRadr if player is on ground...
	    if(!io.b__IO){       // AND not taking in input
	      this.msgRadr(bStll);
	    }
	  }
	}

    public virtual void msgRadr(bool bRadar){
      if(this.rd!=null){
	    rd.doRadar(bRadar);
	  }
    }

   private bool bradar = false;
   public virtual void setRadar(bool bRadar){
	 if(bRadar != this.bradar){
	 Debug.Log ("SETRADAR : " + bRadar);
     this.fp.em.doRadiusBurst(bRadar);
	 }
   }

#endregion

#region ATTACKLOGIC
		
      public virtual void doAimd(Vector3 aimdDir){ //Handles aim Dir
        Vector3 unitDir = aimdDir.normalized ;
        an.doAimg(unitDir.y)                 ;
      }

      public virtual void setAttk(bool bAttk){
        if(bAttk){
          an.attkST          = cAnimn.eStateB.DN      ;
		  this.fp.em.doSinglFire(bAttk, this.bFaceRt) ;
        }
      }

      private bool bpowr        = false ;
      public bool bDpdX         = true  ;
      public bool bDpdY         = false ;

	  public virtual void setRapd(bool bRapd){
		Debug.Log ("Emit RAPIDLY !! " + this);
	  }

      public virtual void setPowr(bool bPowr){
		this.fp.em.doRapidFire(bPowr);
        this.bpowr = bPowr;
        if(bPowr == true){
//          StartCoroutine(WhileRapidFire());
		  an.attkST = cAnimn.eStateB.PW   ; //Power up attack
          an.hState = cAnimn.eStateH.Plnt ;
          this.bDpdX = false; //dPad x ignore
          this.bDpdY = true ; //dPad y listen
          if(this.bGround == true){
		    __gCONSTANT._LEVEL.fx_Dust(this.sEM.eDld, this.transform.position, true);
          }
        }
        else{
          this.bDpdX = true  ; //dPad x listen
          this.bDpdY = false ; //dPad x ignore
          an.doAimg(0.0f)                 ; //reset gun to face forward
          an.attkST = cAnimn.eStateB.Idle ; //release attack from powerup
        }
      }

#endregion

#region GETPOSITION :  FixedUPDATE

	  // Calculate position state delta for animator
      public virtual void FixedUpdate(){

        Vector3 curPos = xform.position;

        if(!bGround){                          //Not on Ground :check vertical state
          float kY = curPos.y - this.prvPos.y ;
          if(kY>0.05f){                        //rising
            an.vState = cAnimn.eStateV.Rise   ;
            an.doVelY(1.0f)                   ;
          }
          else if(kY<-0.05f){                  //falling
            an.vState = cAnimn.eStateV.Fall   ;
            an.doVelY(-1.0f)                  ;
          }
          else{
            an.vState = cAnimn.eStateV.Apex   ;
            an.doVelY(0.0f)                   ;
          }
        }
        else{                                  //On Ground
          an.vState = cAnimn.eStateV.Idle     ;
          an.doVelY(0.0f)                     ;
        }

		// Am I moving?
		if(Vector3.Distance(curPos, this.prvPos) < 0.01f){ // I am still
		  if(bGround){
		    this.an.mState = cAnimn.eStateM.Stll;
		  }
		}
		else{                                              // else I am moving
		  this.an.mState = cAnimn.eStateM.Move;
		}
        prvPos = curPos; //Cache previous position

      }

#endregion

#region SETPOSITION
      ///---------------------------------------TRANSFORMING CHARACTER--------------------------------------------------------------/// 

	  private Vector3 pMoveDir = Vector3.zero;
      public virtual void doMove(Vector3 moveDir){         //Handles movement 
		if(this.bDpdX){
		  if(this.pMoveDir == Vector3.zero){
		    moveDir.x *= 3.5f;                             // move burst to prevent pillbox roll ; HACK: hardcoded value
		  }
          rb.Move(moveDir);
		}
		else{
		  rb.Move(Vector3.zero);
		}
		this.pMoveDir = moveDir; //caching current moveDir
        this.xform.SetPosZ(0.0f);                          // force into 0.0f zPlane so character doesn't slip
        // horizontal move state
        if(Mathf.Abs(moveDir.x) > 0.001f){
		  if(this.bDpdX){
            an.hState = cAnimn.eStateH.Walk ;              // triggering animation for walk
		  }
          if(bGround == true){                             // check for footsteps
            bool bFoot = mc.GetCurvefBool(mc._fAudio0_ID); // IMPORTANT : Implicit that run animation has fCurve where 0==off, 1==on
            if(bFoot == true){
              an.footST = cAnimn.eStateB.DN;
            }
            else{
              an.footST = cAnimn.eStateB.Idle;
            }
          }
		  if(Mathf.Sign(moveDir.x) > 0.0f){                // Handles Facing 
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

      public virtual void setJump(bool bJump){
        if(bJump){
          if(bGround){    
            rb.Jump()                     ;
            an.jumpST = cAnimn.eStateB.DN ;
			__gCONSTANT._LEVEL.fx_Dust(this.sEM.eDjm, this.transform.position, true)  ;
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

      public virtual void setCrouch(bool bDuck){
        if(this.b_2D == false){
          if(bDuck){
            tw.doCrouch(this.sDP.__yScale * this.sDP.duckSc, 0.5f);
          }
          else{
            tw.doCrouch(this.sDP.__yScale);
          }
        }
        if(bDuck){
		  __gCONSTANT._LEVEL.fx_Dust(this.sEM.eDld, this.transform.position, true);
        }	
      }

#endregion

#region SET COLLISION STATE

        public virtual void setGround(bool IN_GROUND){
          this.bGround = IN_GROUND ;
          if(IN_GROUND == true){
            an.grndST = cAnimn.eStateB.DN                                        ;
		    rb.bStunnd = false;
			__gCONSTANT._LEVEL.fx_Dust(this.sEM.eDld, this.xform.position, true) ;
          }
          if(IN_GROUND == false){
            an.grndST = cAnimn.eStateB.UP;
          }
        }

        public virtual void setCeilng(bool IN_CEILING){
          if(IN_CEILING == true){
            an.ceilST = cAnimn.eStateB.DN;
          }
          if(IN_CEILING == false){
            an.ceilST = cAnimn.eStateB.Idle;
          }
        }

		public virtual void setStunnd(bool IN_STUNND){
	      io.bActV = !IN_STUNND;  //if Stunned io is inactive
        }

        public virtual void setRise(bool bRise){
          if(this.sDP.riseXFORM != null){
            if(bRise == true){
              this.cControl.height = this.sDP.__initHgt * 0.65f ; //on rise tuck collision
              this.sDP.riseXFORM.gameObject.SetActive(true )    ;
              this.sDP.dispXFORM.gameObject.SetActive(false)    ;
            }
            else{
              this.cControl.height = this.sDP.__initHgt      ; //on fall expand collision...else bouncy on ground
              this.sDP.riseXFORM.gameObject.SetActive(false) ;
              this.sDP.dispXFORM.gameObject.SetActive(true ) ;
            }
          }
        }

#endregion

#region SET HEALTH

	private void Update(){

	   if(Input.GetKeyDown(KeyCode.H)){
	      Debug.Log ("PLAYER HURT UP");
		  Vector3 hitDir;
		  if(this.bFaceRt){
		    hitDir = new Vector3(-1.0f, 1.0f, 0.0f);
		  }
		  else{
		    hitDir = new Vector3(1.0f, 1.0f, 0.0f);
		  }
		  doHitd(0, hitDir);
	    }
	  }

	  public virtual void doHitd(int iHurt){
	    this.doHitd(iHurt, Vector3.zero);
	  }

      public virtual void doHitd(int iHurt, Vector3 IN_DIR){
//        rb.Jump()                       ;
		rb.doHit(IN_DIR);
        an.lState = cAnimn.eStateL.Hitd ;
        //	  Debug.Log(this + " OOOCH!!! ");
      }

      public virtual void setDead(bool bDead){
        an.lState = cAnimn.eStateL.Dead  ;
        this.gameObject.SetActive(false) ;
        __gCONSTANT._LEVEL.SpawnObj(cLevel.e_Icon.Death, this.transform.position, this.transform.rotation, (Transform SpawnedObj)=>{
          float randomF = UnityEngine.Random.Range(1.0f, 3.0f) ;
          SpawnedObj.position += Vector3.up * 0.5f * randomF   ; // lift slightly off ground to allow for spin and pop
          return true                                          ;
        })                                                   ;
      }

#endregion

#region SET ANIMATION

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
		  this.fp.em.bFaceRight = this.bFaceRt; // For rapidFire logic
        }

        public virtual void setIdlV(bool bIdlV){
          if(bIdlV == true){
            if(this.sDP.riseXFORM != null){
              this.sDP.dispXFORM.gameObject.SetActive(true)  ; //Sudden landing visual swap out
              this.sDP.riseXFORM.gameObject.SetActive(false) ;
            }
          }
        }

        public virtual void setIdlH(bool bIdlH){
          if(bIdlH == true){
            if(this.bGround){ // If onGround, kick up dust
			  __gCONSTANT._LEVEL.fx_Dust(this.sEM.eDsl, this.xform.position, true);
            }
          }
//			Debug.Log ("IDLE : " + bIdlH);
        }


#endregion

#region SET FX

		public virtual void doTrig(int iTrig){
          Debug.Log ("TRIGGERING : " + iTrig);
        }

        public virtual void setFoot(bool bFoot){
          if(bFoot == true){
		    __gCONSTANT._LEVEL.fx_Dust(this.sEM.eDst, this.xform.position, true);
          }
        }

        public virtual void setActV(bool bActvV){
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

#endregion

#region Class Utility

        public virtual void init_Components(){

          rb = __gUtility.AddComponent_mton<cRbody>(this.gameObject)    ; 
          ht = __gUtility.AddComponent_mton<cHealth>(this.gameObject)   ; //HACK : Order matters, must be before an because of delegates
          an = __gUtility.AddComponent_mton<cAnimn>(this.gameObject)    ;
          rd = __gUtility.AddComponent_mton<cRadar>(this.gameObject)    ;
		  if(this.sDP.ui_dpRing){
		    this.rd.ui_dpRing = this.sDP.ui_dpRing;
		    this.rd.vOffset = Vector3.up * this.sDP.__initHgt * 0.5f;
			this.rd.Init();
			this.sDP.ui_dpRing.gameObject.SetActive(false);
		  }
          fp = __gUtility.AddComponent_mton<oEmitter>(this.gameObject)  ;
		    fp.em.sEM.fireRate = this.sEM.fireRate ;
		    fp.em.sEM.firePnts = this.sEM.firePnts ;
		    fp.em.sEM.eBlt     = this.sEM.eBlt     ;
			fp.em.sEM.eGun     = this.sEM.eGun     ;
		    fp.em.Init(); // Sets up firing points; else component.transform is firing point

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

        public Transform GetDispXFORM(){ return this.sDP.dispXFORM ; }
        public Transform GetCamrXFORM(){ return this.camrXFORM     ; }
        public Transform GetRiseXFORM(){ return this.sDP.riseXFORM ; }

#endregion

        }

      }
