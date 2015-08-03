using UnityEngine        ;
using System.Collections ;
using MTON.Interface     ;
using MTON.Class         ;

namespace MTON.Class{

	// Animation Listener; Keep stateless
	public class cAnimn : MonoBehaviour, IAnimn{ 

		public cHealth ht;

#region cAnimn Delegates

		// hState
		public delegate void  DL_VDIR(Vector3 vDir) ; //set up delegate
		public delegate void  DL_Anim(bool bEvnt)   ; //set up delegate
		public delegate void  DL_Valu(int iValue)   ; //set up delegate

        public DL_VDIR OnMoveDelegate              ; //delegate instance
        public DL_VDIR OnFaceDelegate              ; //delegate instance

		public DL_Anim OnWalkDelegate            ; // Dash
		public DL_Anim OnFootDelegate            ; // Foot Step
		public DL_Anim OnDashDelegate            ; // Dash

		// lState - life State
        public DL_Anim OnSpwnDelegate            ; // Spawn
        public DL_Anim OnActvDelegate            ; // Active
        public DL_Anim OnAlivDelegate            ; // Alive
		public DL_Anim OnDactDelegate            ; // Deactived
        public DL_Anim OnDeadDelegate            ; // Dead

		// vState
        public DL_Anim OnGrndDelegate            ; // OnGround
        public DL_Anim OnIdleDelegate            ; // Idle
        public DL_Anim OnRiseDelegate            ; // Rise
        public DL_Anim OnApexDelegate            ; // Apex
        public DL_Anim OnFallDelegate            ; // Fall

		// dState
        public DL_Anim OnDuckDelegate            ; // Duck
        public DL_Anim OnJumpDelegate            ; // Jump
        public DL_Anim OnFlapDelegate            ; // Flap

        public DL_Anim OnAttkDelegate            ; // Attack
        public DL_Anim OnGardDelegate            ; // Guard

        public DL_Anim OnHitdDelegate            ; // Hitd

#endregion

#region cAnimn enum

		public enum eStateL{ // life state
			Idle,
			Spwn,
			Actv,
			Dact,
		    Hitd,
			Aliv,
			Dead
		}

		public enum eStateV{ // vertical state
			Idle,
			Rise,
			Apex,
			Fall
		}

		public enum eStateH{ // horizontal state
			Idle,
			Walk,
			Dash
		}

		public enum eStateF{ // facing state
			Idle, // face Idle
			Left, // face Left
			Rght  // face Right
		}

		public enum eStateB{ // useful for onGround/Crouch/Footstep
			Idle, //neutral 
			UP  , //down
			DN  , //up
			BT    //both : for step where both feet can be down
		}

		public  eStateL lstate;
		public  eStateL lState{
			get{
				return lstate;
			}
			set{
				if(value != lstate){
				  lstate = value;
				  if(value == eStateL.Hitd){
				    this.doHitd(true);
					this.tt ("toggleHitFalse").ttAdd(0.5f, ()=>{
					  lState = eStateL.Idle ; //toggle back to idle after hit
					});
				  }
				  else if(value == eStateL.Dead){
					this.doDead(true);
				  }
				}
			}
		}

		public  eStateV vstate;
		public  eStateV vState{
			get{
				return vstate;
			}
			set{
				if(value != vstate){
					vstate = value ;
					if(value == eStateV.Idle){
						this.doIdle(true);
					}
					else if(value == eStateV.Fall || value == eStateV.Apex){
						this.doRise(false);
						this.doFall(true );
					}
					else if(value == eStateV.Rise){
						this.doRise(true );
						this.doFall(false);
					}
//					Debug.Log(this + " vState updated : " + value);
				}
			}
		}

		public  eStateH hstate;
		public  eStateH hState{
			get{
				return hstate;
			}
			set{ // NOTE: INTERESTING !!!
				if(value == eStateH.Walk){ //continously check for walk
				  hstate = value ;
				  if(fState == eStateF.Rght){
				    doMove(Vector3.right);
				  }
				  else if(fState == eStateF.Left){
				    doMove(Vector3.left);
				  }
				}
				else{
				  if(value != hstate){ //check for others only on change
					hstate = value ;
//					Debug.Log(this + " hState updated : " + value);
				    doMove(Vector3.zero);
				  }
				}
			}
		}

		public  eStateF fstate;
		public  eStateF fState{
			get{
				return fstate;
			}
			set{
				if(value != fstate){
					fstate = value ;
					if(value == eStateF.Rght){
					  doFace(Vector3.right);
					}
					else if(value == eStateF.Left){
					  doFace(Vector3.left);
					}
					else{
					  doFace(Vector3.zero);
					}
//					Debug.Log(this + " fState updated : " + value);
				}
			}
		}

		public  eStateB grndst ;
		public  eStateB grndST {
			get{ return grndst; }
			set{
				if(value != grndst){
					grndst = value;
					if(value == eStateB.DN){
						this.doGrnd(true);
					}
					else{
						this.doGrnd(false);
					}
				}
			}
		}

		public  eStateB duckst ;
		public  eStateB duckST{
			get{ return duckst; }
			set{
				if(value != duckst){
					duckst = value ;
//					Debug.Log(this + " dState updated : " + value);
                    if(value == eStateB.DN){
						doDuck(true);
					}
					else{
						doDuck(false);
					}
				}
			}
		}

		public  eStateB footst ;
		public  eStateB footST{
			get{ return footst; }
			set{
				if(value != footst){
					footst = value ;
//					Debug.Log(this + " dState updated : " + value);
                    if(value == eStateB.DN){
						doFoot(true);
					}
					else{
						doFoot(false);
					}
				}
			}
		}

#endregion

#region Delegate Functions

		//transform functions
		public virtual void doMove(Vector3 vMove){  //walk/run
		  if(this.OnMoveDelegate != null){
		    this.OnMoveDelegate(vMove);
		  }
		}
		public virtual void doFace(Vector3 vFace){
		  if(this.OnFaceDelegate != null){
			this.OnFaceDelegate(vFace);
		  }
		}

		public virtual void doGrnd(bool bGrnd){
		  if(this.OnGrndDelegate != null){
//			Debug.Log ("cAnimn : doGrnd : " + bGrnd + " : " + this);
		    this.OnGrndDelegate(bGrnd);
		  }
		}

		public virtual void doIdle(bool bIdle){
		  if(this.OnIdleDelegate != null){
		    this.OnIdleDelegate(bIdle);
		  }
		} 

		public virtual void doRise(bool bRise){
		  if(this.OnRiseDelegate != null){
		    this.OnRiseDelegate(bRise);
		  }
		}
		public virtual void doFall(bool bFall){
		  if(this.OnFallDelegate != null){
		    this.OnFallDelegate(bFall);
		  }
		}

		public virtual void doDuck(bool bDuck){
		  if(this.OnDuckDelegate != null){
		    this.OnDuckDelegate(bDuck);
		  }
		}

		public virtual void doJump(bool bJump){
		  if(this.OnJumpDelegate != null){
		    this.OnJumpDelegate(bJump);
		  }
		}

		public virtual void doAttk(bool bAttk){
		  if(this.OnAttkDelegate != null){
		    this.OnAttkDelegate(bAttk);
		  }
		}

		public virtual void doFoot(bool bFoot){
			if(this.OnFootDelegate != null){
			  this.OnFootDelegate(bFoot);
			}
		}

		public virtual void doHitd(bool bHit){ 
			if(this.OnHitdDelegate != null){
			  this.OnHitdDelegate(bHit);
			}
		}

#endregion

		public virtual void doDead(bool bDead){
			if(this.OnDeadDelegate != null){
			  this.OnDeadDelegate(bDead);
			}
		}

	}

}
