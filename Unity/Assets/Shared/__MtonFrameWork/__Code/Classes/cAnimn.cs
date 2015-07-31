using UnityEngine        ;
using System.Collections ;
using MTON.Interface     ;

namespace MTON.Class{

	public class cAnimn : MonoBehaviour, IAnimn{

		public delegate void DL_Anim(bool bEvnt) ; //set up delegate
        public DL_Anim OnGrndDelegate            ; //delegate instance
        public DL_Anim OnIdleDelegate            ; //delegate instance
        public DL_Anim OnRiseDelegate            ; //delegate instance
        public DL_Anim OnFallDelegate            ; //delegate instance
        public DL_Anim OnDuckDelegate            ; //delegate instance

		public delegate void DL_VDIR(Vector3 vDir) ; //set up delegate
        public DL_VDIR OnMoveDelegate              ; //delegate instance
        public DL_VDIR OnFaceDelegate              ; //delegate instance

#region cAnimn enum
		public enum eStateV{ //vertical state
			Idle,
			Rise,
			Apex,
			Fall
		}

		public enum eStateH{ //horizontal state
			Idle,
			Walk,
			Dash
		}

		public enum eStateF{ //facing state
			Idle, // face Idle
			Left, // face Left
			Rght  // face Right
		}

		public enum eStateD{ //duck/crouch state
			Idle,
			Duck,
			Jump, //jump
			Flap  //air jump
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
			set{
				if(value != hstate){
					hstate = value ;
//					Debug.Log(this + " hState updated : " + value);
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

		public  eStateD dstate;
		public  eStateD dState{
			get{
				return dstate;
			}
			set{
				if(value != dstate){
					dstate = value ;
//					Debug.Log(this + " dState updated : " + value);
					if(value == eStateD.Duck){
						doDuck(true);
					}
					else{
						doDuck(false);
					}
				}
			}
		}
#endregion

        public virtual void Awake(){
//			Debug.Log(this + " Awake! ");
		}

		//transform functions
		private Vector3 prevMove = Vector3.zero   ; //caching move
		public virtual void doMove(Vector3 vMove){  //walk/run
		  if(vMove != prevMove){
		    if(this.OnMoveDelegate != null){
			  this.OnMoveDelegate(vMove);
		    }
		  }
		  prevMove = vMove;
		}
		public virtual void doFace(Vector3 vFace){
		  if(this.OnFaceDelegate != null){
			this.OnFaceDelegate(vFace);
		  }
		}

		public virtual void doGrnd(bool bGrnd){
		  if(this.OnGrndDelegate != null){
			Debug.Log ("cAnimn : doGrnd : " + bGrnd + " : " + this);
		    this.OnGrndDelegate(bGrnd);
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
		public virtual void doIdle(bool bIdle){
		  if(this.OnIdleDelegate != null){
		    this.OnIdleDelegate(bIdle);
		  }
		} 
		public virtual void doDuck(bool bDuck){
		  if(this.OnDuckDelegate != null){
		    this.OnDuckDelegate(bDuck);
		  }
		}

	}

}
