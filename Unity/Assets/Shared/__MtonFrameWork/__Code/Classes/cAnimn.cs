using UnityEngine        ;
using System.Collections ;
using MTON.Interface     ;

namespace MTON.Class{

	public class cAnimn : MonoBehaviour, IAnimn{

		public delegate void DL_Idle(bool bIdle) ; //set up delegate
        public DL_Idle OnIdleDelegate            ; //delegate instance

		public delegate void DL_Rise(bool bRise) ; //set up delegate
        public DL_Rise OnRiseDelegate            ; //delegate instance

		public delegate void DL_Fall(bool bFall) ; //set up delegate
        public DL_Fall OnFallDelegate            ; //delegate instanc

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
					    if(this.OnIdleDelegate != null){
						  this.OnIdleDelegate(true);
						}
					}
					else if(value == eStateV.Fall){
					    if(this.OnRiseDelegate != null){
						  this.OnRiseDelegate(false);
						}
						if(this.OnFallDelegate != null){
						  this.OnFallDelegate(true );
						}
					}
					else if(value == eStateV.Rise){
					    if(this.OnRiseDelegate != null){
						  this.OnRiseDelegate(true );
						}
						if(this.OnFallDelegate != null){
						  this.OnFallDelegate(false );
						}
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
					  doFace_2D(1.0f);
					}
					else if(value == eStateF.Left){
					  doFace_2D(-1.0f);
					}
					else{
					  doFace_2D(0.0f);
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

		public delegate void DL_Duck(bool bDuck) ; //set up delegate
        public DL_Duck OnDuckDelegate            ; //delegate instance

		public delegate void DL_Face_2D(float fFace) ; //set up delegate
        public DL_Face_2D OnFaceDelegate_2D          ; //delegate instance

		//transform functions
		public virtual void doMove(Vector3 moveDir) {} //walk/run
		public virtual void doFace(Vector3 faceDir) {} //do facing
		public virtual void doJump()                {}
		public virtual void doFall()                {}
		public virtual void doIdle()                {  //standing state

		} 

		public virtual void doDuck(bool bDuck){
		  if(OnDuckDelegate != null){
		    OnDuckDelegate(bDuck);
//		    Debug.Log("doDUCK! : " + bDuck + " : " + this);
		  }
		}

		public virtual void doFace_2D(float fFace){
		  if(OnFaceDelegate_2D != null){
			OnFaceDelegate_2D(fFace);
//		    Debug.Log("doFace! : " + fFace + " : " + this);
		  }
		}

	}

}
