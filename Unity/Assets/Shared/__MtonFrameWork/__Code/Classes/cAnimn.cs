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

        public virtual void Awake(){
			Debug.Log(this + " Awake! ");
		}

		//transform functions
		public void doMove(Vector3 moveDir) {} //walk/run
		public void doJump()                {}
		public void doFall()                {}
		public void doIdle()                {} //standing state
		public void doCrouch()              {}

	}

}
