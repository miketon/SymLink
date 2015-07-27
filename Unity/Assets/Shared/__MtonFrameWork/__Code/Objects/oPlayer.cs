using UnityEngine        ;
using System.Collections ;
using MTON.Class         ;
using MTON.Global        ;
using DG.Tweening        ; //import DemiGiant DoTween

namespace MTON.codeObjects{

  [RequireComponent (typeof (CharacterController))]
  public class oPlayer : MonoBehaviour{

    //init interface members
    public Transform dispObj ; //HACK : Coupling the character dispObj => object with an Animator and render mesh
    public Transform riseObj ; 
	public Transform mBullet ; // bulletObject
	public Transform[] firePnts ; // firing point
	private bool     bFaceRt = true ; // facing Right
	private float    initHgt = 1.0f;
    public cLevel.fx_Hit  eHit ; // enum for particle system to emit

	public void doActV(bool bActvV){
	  if(bActvV == true){
        if(rendr != null){
          rendr.material.color = Color.blue;
        }
	  }
	  else{
        if(rendr != null){
          rendr.material.color = cColr;
	    }
	  }
	}

#region oPlayer Delegates
    private void OnEnable(){
	  //direct input
      io.OnDPAD_DIR_Delegate += doMove;
      io.OnJumpDelegate      += doJump;
      io.OnAttkDelegate      += doAttk; //NOTE: Interesting that doAttk executes, then io.OnAttkDelegate executes???
	  io.OnActVDelegate      += doActV; //Attack Visual = hitFlash
	  
	  //animation : input + character/env state
	  an.OnDuckDelegate      += doCrouch;
	  an.OnFaceDelegate_2D   += doFace;
	  an.OnRiseDelegate      += doRise;
	  an.OnIdleDelegate      += doIdle;

	  //health logic
	  ht.OnHurtDelegate      += this.doHurt;
    }

    private void OnDisable(){
	  //direct input
      io.OnDPAD_DIR_Delegate -= doMove;
      io.OnJumpDelegate      -= doJump; //NOTE: remember to remove delegate in case of wierd memory leaks
      io.OnAttkDelegate      -= doAttk;
	  io.OnActVDelegate      -= doActV; //Attack Visual = hitFlash

	  //animation : input + character/env state
	  an.OnDuckDelegate      -= doCrouch;
	  an.OnFaceDelegate_2D   -= doFace;
	  an.OnRiseDelegate      -= doRise;
	  an.OnIdleDelegate      -= doIdle;

	  //health logic
	  ht.OnHurtDelegate      -= this.doHurt;
    }

#endregion

#region oPlayer Component Manager

    protected CharacterController cControl ;
    protected Transform           xform    ;
	protected Renderer            rendr    ;
	protected Color               cColr    ;
    protected cInput              io       ; //protected; can be replaced with ai; vs. input controller
    protected mCcntl              rb       ; //protected; to access collider volume info

    private cAnimn    an    ;
    private cEquip    eq    ;
    private cHealth   ht    ;
    private cTween    tw    ;

    private LayerMask layerGround;


	public virtual void Awake(){

	  rendr = dispObj.GetComponent<Renderer>();
      cColr = rendr.material.color;
      //		Debug.Log("I'm waking." + __gCONSTANT._FLOOR);
      layerGround = LayerMask.GetMask (__gCONSTANT._FLOOR);
	  init_Components()                                         ;
      init_mRbody()                                             ;
      //		xform         = this.GetComponent<Transform>()           ;
      xform         = rb.xform;
      cControl      = this.GetComponent<CharacterController>() ;
	  this.initHgt = cControl.height;
 
      if(this.dispObj == null){
        Debug.LogError(this + " AWAKE: Display Object(Animator + Render Mesh) NOT ASSIGNED MANUALLY.");
        this.dispObj = this.xform;
        if(this.dispObj == null){
          Debug.LogError(this + " AWAKE: Display Object(Animator + Render Mesh) attempting to auto assign this.transform : SUCCESSFUL ");
        }
        else{
          Debug.LogError(this + " AWAKE: Display Object(Animator + Render Mesh) attempting to auto assign this.transform : FAILED     ");
        }
      }

    }

	public virtual void Start(){
      __gUtility.CheckAndInitLayer(this.gameObject, __gCONSTANT._PLAYER) ; // HACK :level triggers/hint should ignore ground raycast/collision check!
	}


#endregion

#region oPlayer Rbody

	public  float moveForce = 3.0f  ;
    public  float jumpForce = 4.25f ;
    public  float flapForce = 4.25f ;
    public  float dashForce = 3.0f  ;
    public  float massForce = 1.0f  ;

    private void init_mRbody(){ //inits this mRbody settings
      rb.moveForce   = moveForce                              ;
      rb.jumpForce   = jumpForce                              ;
      rb.flapForce   = flapForce                              ;
      rb.dashForce   = dashForce                              ;
      rb.massForce   = massForce                              ;
      //tw_Cache = xform.DORotate(IN_rotate, durFX, RotateMode.Fast).SetEase(Ease.InOutElastic);
    }

	private Vector3 prvPos = Vector3.zero;
	private bool bGround;

	public virtual void FixedUpdate(){

		bGround        = rb.OnGround();
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

    public virtual void doMove(Vector3 moveDir){ //Handles movement and facing
      rb.Move(moveDir) ;
	  // horizontal move state
      if(Mathf.Abs(moveDir.x) > 0.001f){
		an.hState = cAnimn.eStateH.Walk;
        float faceDir = Mathf.Sign(moveDir.x); //x == hAxis ; Sign return -1.0f or 1.0f
		if(faceDir > 0.0f){
		  an.fState = cAnimn.eStateF.Rght;
		}
		else{
		  an.fState = cAnimn.eStateF.Left;
		}
      }
      else{
		an.hState = cAnimn.eStateH.Idle;
		an.fState = cAnimn.eStateF.Idle;
      }
	  //duck/crouch state
	  if(Mathf.Abs(moveDir.y) > 0.001f){
		float vertDir = Mathf.Sign(moveDir.y); //y == vAxis  ; Sign return -1.0f or 1.0f
		if(vertDir < 0.0f){
		  if(bGround){
		    an.dState = cAnimn.eStateD.Duck;
		  }
		}

      }
	  else{
		if(an.vState != cAnimn.eStateV.Rise){
	      an.dState = cAnimn.eStateD.Idle;
		}
	  }
    }

    public virtual void doJump(bool bJump){
      if(bJump){
        if(bGround){    
          rb.Jump()                       ;
		  an.dState = cAnimn.eStateD.Jump ;
        }
        else{
          rb.Flap()                       ; //flap when not on ground
		  an.dState = cAnimn.eStateD.Flap ;
        }
      }
    }

	public virtual void doAttk(bool bAttk){
      if(bAttk){
		if(this.firePnts.Length > 0){
		  Transform firePnt;
		  if(this.bFaceRt == true){
		    firePnt = this.firePnts[0];
		  }
		  else{
		    firePnt = this.firePnts[1];
		  }
//	    Debug.Log("doAttk : " + bAttk + " : "  + this);
		  if(firePnt != null){
		    firePnt.gameObject.SetActive(true);
		    if(this.mBullet != null){
			  __gCONSTANT._LEVEL.Emit_Bullet(this.mBullet, firePnt.position, firePnt.rotation, ()=>{
		        return true;
		      });
		    }
		    if(eHit != cLevel.fx_Hit.None){ // set to -1 to prevent emission
		      __gCONSTANT._LEVEL.Emit_Hit(eHit, firePnt.position, Quaternion.identity, ()=>{
		        firePnt.gameObject.SetActive(false);
		        return true;
		      });
	        }
		  }
		}
	  }
      else{
//	    Debug.Log("doAttk : " + bAttk + " : "  + this);
      }
    }

    public virtual void doCrouch(bool bDuck){
	  if(bDuck){
	    tw.doCrouch(0.33f, 0.5f);
	  }
	  else{
	    tw.doCrouch(1.0f);
	  }
	}

	public virtual void doFace(float fFace){
      tw.doRotateTo(new Vector3(0.0f, fFace * -50.0f, 0.0f));
	  if(fFace > Mathf.Epsilon){
	    this.bFaceRt = true;
	  }
	  else if(fFace < -Mathf.Epsilon){
		this.bFaceRt = false;
	  }
	}
    public virtual void doFall()  {}
    public void doIdle(){   //neutral state -> good for swapping/activating back main model
      //      doRest()                                       ;
    }

	public virtual void doIdle(bool bIdle){
	  if(bIdle == true){
//		this.cControl.height = this.initHgt;
        this.dispObj.gameObject.SetActive(true);
		if(this.riseObj != null){
		  this.riseObj.gameObject.SetActive(false);
		}
	  }
	}

	public virtual void doRise(bool bRise){
	  if(this.riseObj != null){
	    if(bRise == true){
		  this.cControl.height = this.initHgt * 0.5f; //on rise tuck collision
		  this.riseObj.gameObject.SetActive(true );
		  this.dispObj.gameObject.SetActive(false);
		}
		else{
		  this.cControl.height = this.initHgt; //on fall expand collision...else bouncy on ground
		  this.riseObj.gameObject.SetActive(false);
		  this.dispObj.gameObject.SetActive(true );
		}
	  }
	}

	public virtual void doHurt(int iHurt){
      rb.Jump()                       ;
	  Debug.Log(this + " OOOCH!!! ");
	}

#endregion


#region Class Utility

	public virtual void init_Components(){
			
      rb = __gUtility.AddComponent_mton<mCcntl>(this.gameObject); 
      an = __gUtility.AddComponent_mton<cAnimn>(this.gameObject);
      eq = __gUtility.AddComponent_mton<cEquip>(this.gameObject);
      io = __gUtility.AddComponent_mton<cInput>(this.gameObject);
      ht = __gUtility.AddComponent_mton<cHealth>(this.gameObject);
      tw = __gUtility.AddComponent_mton<cTween>(this.dispObj.gameObject)   ; //Tweening display obj vs. character controller

      rendr = this.dispObj.gameObject.GetComponent<Renderer>()   ; //Get Renderer Component

	}

#endregion

  }

}
