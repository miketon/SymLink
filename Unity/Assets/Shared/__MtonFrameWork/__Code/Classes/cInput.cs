using UnityEngine        ;
using System.Collections ;
using MTON.Interface     ;

namespace MTON.Class{

	public class cInput : MonoBehaviour, IInput{

        public virtual void Start(){
			Debug.Log(this + " Start ! ");
		}

		// Is input enabled
		public int bInput { get; set; } 

		// Button states
		private bool bjump = false;
		public bool bJump { 
			get{
			  Debug.Log("Getting bJump : " + bjump);
			  return bjump;
			}
			set{
			  Debug.Log("Setting bJump : " + value);
			  bjump = value;
			} 
	    }
		public bool bAttk { get; set; }


		// Directional Pad
		public virtual void OnDir_Mov(Vector3 vDir){
			Debug.Log("OnDir Move!" + vDir);
		}
		public virtual void OnDir_Aim(Vector3 vDir){
			Debug.Log("OnDir Aim!" + vDir);
		}

	}

}
