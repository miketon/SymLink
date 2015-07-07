using UnityEngine        ;
using System.Collections ;
using MTON.Interface     ;

namespace MTON.Class{

	public class cInput : MonoBehaviour, IInput{

        public virtual void Start(){
			Debug.Log(this + " Start ! ");
		}

		// Is input enabled
		public bool bInput { get; set; } 
		
		public delegate void OnJump(bool bJump) ; //set up delegate
		public OnJump OnJumpDelegate            ; //delegate instance

		// Button states
		private bool bjump = false;
		public bool bJump { 
			get{
			  return bjump;
			}
			set{
			  bjump = value;
			  if(OnJumpDelegate != null){ // NOTE: Just in case class exist, but no delegate is assigned
			    OnJumpDelegate(bjump);
			  }
			} 
	    }

		private bool battk = false;
		public bool bAttk { 
			get{
			  return battk;
			}
			set{
			  battk = value;
			} 
		}

		// Directional Pad
		public virtual void OnDir_Mov(Vector3 vDir){
			Debug.Log("OnDir Move!" + vDir);
		}
		public virtual void OnDir_Aim(Vector3 vDir){
			Debug.Log("OnDir Aim!" + vDir);
		}


	    public virtual void DoAttk(bool bAttk){

		}

		public virtual void Update(){
			if(Input.GetKeyDown(KeyCode.Space)){
				bJump = true;
			}
			else if(Input.GetKeyUp(KeyCode.Space)){
				bJump = false;
			}
		}

	}

}
