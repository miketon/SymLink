using UnityEngine        ;
using System.Collections ;
using MTON.Class         ;
using MTON.Global        ;
using DG.Tweening        ; //import DemiGiant DoTween

namespace MTON.codeObjects{

  public class oPlayer : MonoBehaviour{

    //init interface members
    public  Transform dispObj ; //HACK : Coupling the character dispObj => object with an Animator and render mesh

#region oPlayer Delegates
    private void OnEnable(){
	  //direct input
      io.OnDPAD_DIR_Delegate += doMove;
      io.OnJumpDelegate      += doJump;
      io.OnAttkDelegate      += doAttk; //NOTE: Interesting that doAttk executes, then io.OnAttkDelegate executes???
	  
	  //animation : input + character/env state
	  an.OnDuckDelegate      += doCrouch;
	  an.OnFaceDelegate      += doFace;
    }

    private void OnDisable(){
	  //direct input
      io.OnDPAD_DIR_Delegate -= doMove;
      io.OnJumpDelegate      -= doJump; //NOTE: remember to remove delegate in case of wierd memory leaks
      io.OnAttkDelegate      -= doAttk;

	  //animation : input + character/env state
	  an.OnDuckDelegate      -= doCrouch;
    }

#endregion

#region oPlayer Component Manager

    private CharacterController cControl;
    private Transform xform ;
    private mCcntl    rb    ;
    private cAnimn    an    ;
    private cEquip    eq    ;
    private cInput    io    ;
    private cTween    tw    ;

    private LayerMask layerGround;

	public virtual void Awake(){

      //		Debug.Log("I'm waking." + __gCONSTANT._FLOOR);
      layerGround = LayerMask.GetMask (__gCONSTANT._FLOOR);

      rb = __gUtility.AddComponent_mton<mCcntl>(this.gameObject); 
      an = __gUtility.AddComponent_mton<cAnimn>(this.gameObject);
      eq = __gUtility.AddComponent_mton<cEquip>(this.gameObject);
      io = __gUtility.AddComponent_mton<cInput>(this.gameObject);
      tw = __gUtility.AddComponent_mton<cTween>(this.dispObj.gameObject)   ; //Tweening display obj vs. character controller
      init_mRbody()                                             ;
      //		xform         = this.GetComponent<Transform>()           ;
      xform         = rb.xform;
      cControl      = this.GetComponent<CharacterController>() ;

      if(cControl == null){
        Debug.LogError(this + " AWAKE: CHARACTER CONTROLLER MISSING ");
      }
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
		  if(rb.OnGround()){
		    an.dState = cAnimn.eStateD.Duck;
		  }
		}

      }
	  else{
	    an.dState = cAnimn.eStateD.Idle;
	  }
    }

    public virtual void doJump(bool bJump){
      if(bJump){
        if(rb.OnGround()){    
          rb.Jump()                                ;
        }
        else{
          rb.Flap()                                ; //flap when not on ground
        }
      }
    }

	public virtual void doAttk(bool bAttk){
      if(bAttk){
	    Debug.Log("doAttk : " + bAttk + " : "  + this);
	  }
      else{
	    Debug.Log("doAttk : " + bAttk + " : "  + this);
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
	}
    public virtual void doFall()  {}
    public void doIdle(){   //neutral state -> good for swapping/activating back main model
      //      doRest()                                       ;
    }
#endregion

  }

}
