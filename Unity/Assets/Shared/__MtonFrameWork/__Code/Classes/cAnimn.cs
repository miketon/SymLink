using UnityEngine        ;
using System.Collections ;
using MTON.Interface     ;

namespace MTON.Class{

	public class cAnimn : MonoBehaviour, IAnimn{

#region cAnimn enum
		public enum eStateV{
			Idle,
			Duck,
			Rise,
			Apex,
			Fall
		}

		public enum eStateH{
			Idle,
			Walk,
			Dash
		}

		public enum eStateF{ //facing state
			Idle, // face Idle
			Left, // face Left
			Rght  // face Right
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
					Debug.Log(this + " hState updated : " + value);
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
					Debug.Log(this + " fState updated : " + value);
				}
			}
		}
#endregion

        public virtual void Awake(){
//			Debug.Log(this + " Awake! ");
		}

		//public delegate void OnDuck(bool bDuck) ; //set up delegate
        //public OnDuck OnDuckDelegate            ; //delegate instance

		//transform functions
		public virtual void doMove(Vector3 moveDir) {} //walk/run
		public virtual void doFace(Vector3 faceDir) {} //do facing
		public virtual void doJump()                {}
		public virtual void doFall()                {}
		public virtual void doIdle()                {  //standing state

		} 
		public virtual void doCrouch()              {
		  //OnDuckDelegate(true);
		}

	}

}
