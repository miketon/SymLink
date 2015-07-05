using UnityEngine        ;
using System.Collections ;
using MTON.Interface     ;

namespace MTON.Class{

	public class cAnimn : MonoBehaviour, IAnimn{

	    public enum eGO_ANIM{
			Idle,
			Duck,
			Walk,
			Dash,
			Jump,
			Apex,
			Fall,
			FcId, //face Idle
			FcLt, //face Left
			FcRt, //face Right
		}

		private eGO_ANIM enumclip = eGO_ANIM.Idle;
		public  eGO_ANIM enumClip{
			get{
				return enumclip;
			}
			set{
				if(value != enumclip){
					enumclip = value ;
					Debug.Log(this + " enumClip updated : " + value);
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
