using UnityEngine        ;
using System.Collections ;
using MTON.Interface     ;

namespace MTON.Class{

	public class cAnimn : MonoBehaviour, IAnimn{

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
			Duck
		}

		private eStateV vstate;
		public  eStateV vState{
			get{
				return vstate;
			}
			set{
				if(value != vstate){
					vstate = value ;
					Debug.Log(this + " vState updated : " + value);
				}
			}
		}

		private eStateH hstate;
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

		private eStateF fstate;
		public  eStateF fState{
			get{
				return fstate;
			}
			set{
				if(value != fstate){
					fstate = value ;
					if(value == eStateF.Rght){
					  doFace(1.0f);
					}
					else if(value == eStateF.Left){
					  doFace(-1.0f);
					}
					else{
					  doFace(0.0f);
					}
//					Debug.Log(this + " fState updated : " + value);
				}
			}
		}

		private eStateD dstate;
		public  eStateD dState{
			get{
				return dstate;
			}
			set{
				if(value != dstate){
					dstate = value ;
					Debug.Log(this + " dState updated : " + value);
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
			xform = this.GetComponent<Transform>();
			prvPos = xform.position;
		}

		private Transform xform;
		private Vector3 prvPos;

		public virtual void FixedUpdate(){
		  Vector3 curPos = xform.position;
		  float kY = curPos.y - prvPos.y;
		  if(kY>0.001f){ //rising
		    vState = eStateV.Rise;
		  }
		  else if(kY<-0.001f){ //falling
		    vState = eStateV.Fall;
		  }
		  prvPos = curPos;
		}

		public delegate void DL_Duck(bool bDuck) ; //set up delegate
        public DL_Duck OnDuckDelegate            ; //delegate instance

		public delegate void DL_Face(float fFace) ; //set up delegate
        public DL_Face OnFaceDelegate             ; //delegate instance

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

		public virtual void doFace(float fFace){
		  if(OnFaceDelegate != null){
			OnFaceDelegate(fFace);
		    Debug.Log("doFace! : " + fFace + " : " + this);
		  }
		}

	}

}
