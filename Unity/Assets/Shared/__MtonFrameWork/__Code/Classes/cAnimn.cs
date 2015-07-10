using UnityEngine        ;
using System.Collections ;
using MTON.Interface     ;

namespace MTON.Class{

	public class cAnimn : MonoBehaviour, IAnimn{

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
			Dash,
			FcId, // face Idle
			FcLt, // face Left
			FcRt  // face Right
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

        public virtual void Awake(){
//			Debug.Log(this + " Awake! ");
		}

		//transform functions
		public virtual void doMove(Vector3 moveDir) {} //walk/run
		public virtual void doFace(Vector3 faceDir) {} //do facing
		public virtual void doJump()                {}
		public virtual void doFall()                {}
		public virtual void doIdle()                {} //standing state
		public virtual void doCrouch()              {}

	}

}
