using UnityEngine        ;
using System.Collections ;
using MTON.Class         ;
using MTON.Global        ;
using DG.Tweening        ; //import DemiGiant DoTween

namespace MTON.codeObjects{

  [RequireComponent (typeof (CharacterController))]
  [RequireComponent (typeof (cMcanm))] //must have to call mecanim...need fields so can not populate later
  public class oPlayer : MonoBehaviour{

    //init interface members
    public bool      b_2D = true;
    public Transform dispXFORM ; //HACK : Coupling the character dispXFORM => object with an Animator and render mesh
	public Animator  dispAnmtr ;
    public Transform camrXFORM ; 
    public Transform riseXFORM ; 
	public Transform[] firePnts ; // firing point

    public GameObject OnDeathPrefab;

    public cLevel.e_Bllt  eBlt ; // enum for bullet type to emit
    public cLevel.fx_Hit  eGun ; // enum for GunFlare particle system to emit
    public cLevel.fx_Hit  eDjm ; // enum for Dust Jump particle system to emit
    public cLevel.fx_Hit  eDld ; // enum for Dust Land particle system to emit

	public  bool    bGround = false        ;
	public  bool    bFaceRt = true         ; // facing Right
	private float   initHgt = 1.0f         ;
	private Vector3 prvPos  = Vector3.zero ;

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
	  an.OnIdleDelegate      += doIdle;
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
	  an.OnIdleDelegate      -= doIdle;
    }

#endregion

#region oPlayer Component Manager

    protected CharacterController cControl ;
    protected Transform           xform    ;
	protected Renderer            rendr    ;
	protected Color               cColr    ;
    protected cInput              io       ; //protected; can be replaced with ai; vs. input controller
	protected cRbody              rb       ; //protected; to access collider volume info

    private cAnimn    an    ;
    private cEquip    eq    ;
    private cHealth   ht    ;
    private cTween    tw    ;
    private cMcanm    mc    ; //mecanim handler

	private cEmit_Audio     au ;

	private float yScale = 1.0f ;   
	public  float duckSc = 1.0f ;   

    private LayerMask layerGround;

	public virtual void Awake(){



	  if(this.b_2D == true){
//	    this.yRotOffset_3D = 180.0f; //No offset if character is 2D
	  }

	  rendr = this.dispXFORM.GetComponent<Renderer>();
//      cColr = rendr.material.color;
      layerGround = LayerMask.GetMask (__gCONSTANT._FLOOR);
	  init_Components()                                        ;
      init_cRbody()                                            ;
      xform         = this.GetComponent<Transform>()           ;
      cControl      = this.GetComponent<CharacterController>() ;
	  this.initHgt  = cControl.height;
 
      if(this.dispXFORM == null){
        Debug.LogError(this + " AWAKE: Display Object(Animator + Render Mesh) NOT ASSIGNED MANUALLY.");
        this.dispXFORM = this.xform;
        if(this.dispXFORM == null){
          Debug.LogError(this + " AWAKE: Display Object(Animator + Render Mesh) attempting to auto assign this.transform : SUCCESSFUL ");
        }
        else{
          Debug.LogError(this + " AWAKE: Display Object(Animator + Render Mesh) attempting to auto assign this.transform : FAILED     ");
        }
      }
	  this.yScale = this.dispXFORM.localScale.y;
	  this.sclX = this.dispXFORM.localScale.x;

	  fPoint = new GameObject(this.name + "_FIRINGPOINT_MTON").transform;
	  fPoint.parent = this.transform;
	  fPoint.rotation = Quaternion.Euler(this.transform.forward);

	  oPoint = new GameObject(this.name + "_ORIGINPOINT_MTON").transform;
	  oPoint.parent = this.transform;
//	  oPoint.position = rb.cen;

    }

	public virtual void Start(){
      __gUtility.CheckAndInitLayer(this.gameObject, __gCONSTANT._PLAYER) ; // HACK :level triggers/hint should ignore ground raycast/collision check!
	  if(OnDeathPrefab == null){
        //		Debug.Log ("OnEnable DeathPrefab : " + (int)cLevel.e_Icon.Death + OnDeathPrefab);
        OnDeathPrefab = __gCONSTANT._LEVEL.e_Icons[(int)cLevel.e_Icon.Death].gameObject;
      }
	}


#endregion

#region oPlayer Rbody

	public  float moveForce = 3.0f  ;
    public  float jumpForce = 4.25f ;
    public  float flapForce = 4.25f ;
    public  float dashForce = 3.0f  ;
    public  float massForce = 1.0f  ;

    private void init_cRbody(){ //inits this cRbody settings
      rb.moveForce   = moveForce                              ;
      rb.jumpForce   = jumpForce                              ;
      rb.flapForce   = flapForce                              ;
      rb.dashForce   = dashForce                              ;
      rb.massForce   = massForce                              ;
      //tw_Cache = xform.DORotate(IN_rotate, durFX, RotateMode.Fast).SetEase(Ease.InOutElastic);
    }


	public virtual void FixedUpdate(){

		Vector3 curPos = xform.position;
		if(!bGround){                        //Not on Ground :check vertical state
			float kY = curPos.y - prvPos.y;
			if(kY>0.05f){                   //rising
				an.vState = cAnimn.eStateV.Rise;
			}
			else if(kY<-0.05f){             //falling
				an.vState = cAnimn.eStateV.Fall;
			}
			else{
			    an.vState = cAnimn.eStateV.Apex;
			}
		}
		else{                                //On Ground
			an.vState = cAnimn.eStateV.Idle;
		}
		prvPos = curPos;

	}

#endregion

#region oPlayer moveset Function
    ///---------------------------------------TRANSFORMING CHARACTER--------------------------------------------------------------/// 

    public virtual void doAimd(Vector3 aimdDir){ //Handles movement and facing
	  Vector3 unitDir = aimdDir.normalized;
	  an.doAimg(unitDir.y);
	}

    public virtual void doMove(Vector3 moveDir){ //Handles movement and facing
      rb.Move(moveDir) ;
	  this.xform.SetPosZ(0.0f); // force into 0.0f zPlane so character doesn't slip
	  // horizontal move state
      if(Mathf.Abs(moveDir.x) > 0.001f){
		an.hState = cAnimn.eStateH.Walk;
		if(bGround == true){ // check for footsteps
		  bool bFoot = mc.GetCurvefBool(mc._fAudio0_ID); //IMPORTANT : Implicit that run animation has fCurve where 0==off, 1==on
		  if(bFoot == true){
		    an.footST = cAnimn.eStateB.DN;
		  }
		  else{
		    an.footST = cAnimn.eStateB.UP;
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
	    if(this.bDpdX == true){
		  an.hState = cAnimn.eStateH.Idle;
        }
	  }
	  //duck/crouch state
	  if(Mathf.Abs(moveDir.y) > 0.001f){
		Debug.Log ("OPLAYER yAXIS : " + moveDir.y);
		float vertDir = Mathf.Sign(moveDir.y); //y == vAxis  ; Sign return -1.0f or 1.0f
	    if(this.bDpdX == true){ // if not on lockdown, then ok to duck
		  if(vertDir < 0.0f){
		    if(bGround == true){
		      an.duckST = cAnimn.eStateB.DN;
		    }
		  }
		}

      }
	  else{
		if(an.vState != cAnimn.eStateV.Rise){
	      an.duckST = cAnimn.eStateB.UP;
		}
	  }
    }

    public virtual void doJump(bool bJump){
      if(bJump){
        if(bGround){    
          rb.Jump()                     ;
		  an.jumpST = cAnimn.eStateB.DN ;
		  if(this.eDjm != cLevel.fx_Hit.None){ // set to -1 to prevent emission
			__gCONSTANT._LEVEL.Emit_Hit(eDjm, this.transform.position + (Vector3.up * 0.9f), Quaternion.identity, ()=>{
		      return true;
		    });
	      }
        }
        else{
          rb.Flap()                     ; //flap when not on ground
		  an.jumpST = cAnimn.eStateB.DN ;
        }
      }
	  else{
		  an.jumpST = cAnimn.eStateB.UP ;
	  }
    }
	
	private Transform oPoint;
	private Transform fPoint;

	public virtual void doAttk(bool bAttk){
      if(bAttk){
		if(this.firePnts.Length > 0){
		  an.attkST = cAnimn.eStateB.DN;
		  Transform firePnt = firePnts[0];
		  firePnt.gameObject.SetActive(true);
		  if(this.eBlt != cLevel.e_Bllt.None){
//			Quaternion rotFire = Quaternion.Euler((this.transform.position - firePnt.position).normalized);
//			fPoint.position = firePnt.position;
//	        oPoint.rotation = Quaternion.LookRotation(fPoint.position);
//			fPoint.rotation = Quaternion.Euler(-firePnt.forward);
//			fPoint.rotation = firePnt.rotation;
			__gCONSTANT._LEVEL.Emit_Bullet(this.eBlt, firePnt.position, firePnt.rotation, ()=>{
		      return true;
		    });
		  }
		  if(this.eGun != cLevel.fx_Hit.None){ // set to -1 to prevent emission
		    __gCONSTANT._LEVEL.Emit_Hit(eGun, firePnt.position, Quaternion.identity, ()=>{
		      firePnt.gameObject.SetActive(false);
		      return true;
		    });
	      }
		}
	  }
      else{
//	    Debug.Log("doAttk : " + bAttk + " : "  + this);
		an.attkST = cAnimn.eStateB.UP;
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

	public float fireRate  = 0.25f ;

	private bool bpowr = false ;
    private bool bDpdX = true  ;
    private bool bDpdY = false ;
	private Vector3 vDstOffSet = Vector3.up * 1.85f;
    public virtual void doPowr(bool bPowr){
	  this.bpowr = bPowr;
	  if(bPowr == true){
	    StartCoroutine(WhileRapidFire());
		this.bDpdX = false; //dPad x ignore
		this.bDpdY = true ; //dPad y listen
		if(this.bGround == true){
		  fx_Dust();
		}
	  }
	  else{
		this.bDpdX = true  ; //dPad x listen
		this.bDpdY = false ; //dPad x ignore
	  }
	}

	private void fx_Dust(){
	  if(this.eDld != cLevel.fx_Hit.None){ // set to -1 to prevent emission
	    __gCONSTANT._LEVEL.Emit_Hit(eDld, this.transform.position + this.vDstOffSet, Quaternion.identity, ()=>{
		  return true;
		});
	  }
    }

    public IEnumerator WhileRapidFire(){
	  while(this.bpowr == true){
		an.hState = cAnimn.eStateH.Plnt;
		this.doMove(Vector3.zero);
	    if(this.mt_TimeStep(this.fireRate)){
//	      Debug.Log ("Rapid Fire : " + Time.time); //HACK : time print doesn't match fireRate why???
		  this.doAttk(true);
		}
        yield return null;
	  }
	}

    public virtual void doCrouch(bool bDuck){
	if(this.b_2D == false){
	  if(bDuck){
		tw.doCrouch(this.yScale * this.duckSc, 0.5f);
	  }
	  else{
		tw.doCrouch(this.yScale);
	  }
	}
    if(bDuck){
	  fx_Dust();
	}	
	}

	public float yRotOffset_3D = -50.0f;
	public float sclX = 1.0f;

	public virtual void doFace(Vector3 vFace){ //for 2D facing, use x
	  if(vFace.x > 0.01f){ // Mathf.Epsilon){
	    this.bFaceRt = true;
		if(this.b_2D == true){
//		  this.dispXFORM.rotation = Quaternion.Euler(new Vector3(0.0f, vFace.x * this.yRotOffset_3D, 0.0f));
		  this.dispXFORM.SetScaleX(this.sclX);
		}
		else{
	    tw.doRotateTo(new Vector3(0.0f, vFace.x * yRotOffset_3D, 0.0f));
		}
	  }
	  else if(vFace.x < -0.01f){ //-Mathf.Epsilon){
		this.bFaceRt = false;
		if(this.b_2D == true){
//		  this.dispXFORM.rotation = Quaternion.Euler(new Vector3(0.0f, vFace.x * this.yRotOffset_3D, 0.0f));
		  this.dispXFORM.SetScaleX(-this.sclX);
		}
		else{
		tw.doRotateTo(new Vector3(0.0f, vFace.x * yRotOffset_3D, 0.0f));
		}
	  }
	  else{
	    if(b_2D != true){ //Not 2D; play with rotation offset
	      if(this.bFaceRt == true){
		    tw.doRotateTo(new Vector3(0.0f, yRotOffset_3D * 0.65f, 0.0f));
		  }
		  else{
		    tw.doRotateTo(new Vector3(0.0f, yRotOffset_3D * -0.65f, 0.0f));
		  }
		}
	  }
	}

    public virtual void doFall()  {}

	public virtual void doIdle(bool bIdle){
	  if(bIdle == true){
//		this.cControl.height = this.initHgt;
        this.dispXFORM.gameObject.SetActive(true);
		if(this.riseXFORM != null){
		  this.riseXFORM.gameObject.SetActive(false);
		}
	  }
	}

	public virtual void doRise(bool bRise){
	  if(this.riseXFORM != null){
	    if(bRise == true){
		  this.cControl.height = this.initHgt * 0.65f; //on rise tuck collision
		  this.riseXFORM.gameObject.SetActive(true );
		  this.dispXFORM.gameObject.SetActive(false);
		}
		else{
		  this.cControl.height = this.initHgt; //on fall expand collision...else bouncy on ground
		  this.riseXFORM.gameObject.SetActive(false);
		  this.dispXFORM.gameObject.SetActive(true );
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
        float randomF = Random.Range(1.0f, 3.0f)                    ;
        SpawnedObj.position += Vector3.up * 0.5f * randomF          ; // lift slightly off ground to allow for spin and pop
        return true;
      });
	}

	public virtual void doGround(bool IN_GROUND){
      this.bGround = IN_GROUND;
	  if(IN_GROUND == true){
	    an.grndST = cAnimn.eStateB.DN;
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
	    an.ceilST = cAnimn.eStateB.UP;
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
      tw = __gUtility.AddComponent_mton<cTween>(this.dispXFORM.gameObject)   ; //Tweening display obj vs. character controller
	  }
      mc = __gUtility.AddComponent_mton<cMcanm>(this.gameObject)  ;
	  
	  mc.anST = an;
	  if(this.dispAnmtr == null){ //will try to grab from display object if not assigned
	    this.dispAnmtr = this.dispXFORM.gameObject.GetComponent<Animator>();
	  }
	  mc.anim = this.dispAnmtr;
	 
	  au = __gUtility.AddComponent_mton<cEmit_Audio>(this.gameObject)  ;

      rendr = this.dispXFORM.gameObject.GetComponent<Renderer>()   ; //Get Renderer Component

	}

	public Transform GetDispXFORM(){ return this.dispXFORM; }
	public Transform GetCamrXFORM(){ return this.camrXFORM; }
	public Transform GetRiseXFORM(){ return this.riseXFORM; }

#endregion

  }

}
