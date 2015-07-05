using UnityEngine        ;
using System.Collections ;
using MTON.Class         ;
using MTON.Global        ;
using DG.Tweening        ; //import DemiGiant DoTween

namespace MTON.codeObjects{

  public class oPlayer : MonoBehaviour{

		//init interface members
		public  Transform dispObj ; //HACK : Coupling the character dispObj => object with an Animator and render mesh

		public  float moveForce = 3.0f  ;
		public  float jumpForce = 4.25f ;
		public  float flapForce = 4.25f ;
		public  float dashForce = 3.0f  ;
		public  float massForce = 1.0f  ;
		
		private CharacterController cControl;
		private Transform xform ;
		private mCcntl    rb    ;
		private cAnimn    an    ;
		private cEquip    eq    ;
		private cInput    io    ;
		private cTween    tw    ;

	    private LayerMask layerGround;
		
		private void init_mRbody(){ //inits this mRbody settings
			rb.moveForce   = moveForce                              ;
			rb.jumpForce   = jumpForce                              ;
			rb.flapForce   = flapForce                              ;
			rb.dashForce   = dashForce                              ;
			rb.massForce   = massForce                              ;
	        //tw_Cache = xform.DORotate(IN_rotate, durFX, RotateMode.Fast).SetEase(Ease.InOutElastic);
			//xform.DORo
		}

	public virtual void Awake(){

		Debug.Log("I'm waking." + __gCONSTANT._FLOOR);
		layerGround = LayerMask.GetMask (__gCONSTANT._FLOOR);

		rb = this.gameObject.AddComponent<mCcntl>();
		an = this.gameObject.AddComponent<cAnimn>();
		eq = this.gameObject.AddComponent<cEquip>();
		io = this.gameObject.AddComponent<cInput>();
		tw = this.gameObject.AddComponent<cTween>();
		init_mRbody()                                            ;
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

		#region IAnimn_DO interface implementation
		///---------------------------------------TRANSFORMING CHARACTER--------------------------------------------------------------/// 
		
		public virtual void doMove(Vector3 moveDir){
			rb.Move(moveDir) ;
		}
		
		public virtual void doJump(){
			if(rb.OnGround()){    
				rb.Jump()                                ;
			}
			else{
				rb.Flap()                                ; //flap when not on ground
			}
		}
		
		public virtual void doCrouch(){}
		public virtual void doFall()  {}
		public void doIdle(){   //neutral state -> good for swapping/activating back main model
			//      doRest()                                       ;
		}
		#endregion

	private float facedir = 0.0f;
	public float faceDir{
      get{ return facedir  ; }
      set{ 
	    if(value != facedir){
		  Debug.Log ("FaceDir Changed : " + value);
		  facedir = value;
		  tw.doRotateTo(new Vector3(0.0f, value * -50.0f, 0.0f));
		}
	  }
    }

	private void Update(){
		if(Input.GetKeyDown(KeyCode.Space)){
			//Debug.Log("Space");
			//eq.OnEquip();
			//io.bJump = true;
			doJump();
		}
		else if(Input.GetKeyUp(KeyCode.Space)){
			//io.bJump = false;
		}
		
		float hAxis = Input.GetAxis("Horizontal");
		if(Mathf.Abs (hAxis)> 0.01f){
				Vector3 moveDir = new Vector3(hAxis, 0.0f, 0.0f);
				doMove(moveDir);
				faceDir = Mathf.Sign(hAxis);
		}
		else{
				doMove(Vector3.zero);
				faceDir = 0.0f;
		}
	}

  }

}
