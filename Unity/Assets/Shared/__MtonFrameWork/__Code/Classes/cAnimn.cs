using UnityEngine        ;
using System.Collections ;
using MTON.Interface     ;

namespace MTON.Class{

	public class cAnimn : MonoBehaviour, IAnimn{

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
