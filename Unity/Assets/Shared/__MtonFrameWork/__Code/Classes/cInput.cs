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

		private bool battk = false;
		public bool bAttk { 
			get{
			  Debug.Log("Getting bAttk : " + bjump);
			  return battk;
			}
			set{
			  Debug.Log("Setting bAttk : " + value);
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

		public virtual void DoJump(bool bJump){
			Debug.Log(this + " DoJump " + bJump);
		}
	    public virtual void DoAttk(bool bAttk){

		}

		public virtual void Update(){
			if(Input.GetKeyDown(KeyCode.Space)){
				DoJump(true);
			}
			else if(Input.GetKeyUp(KeyCode.Space)){
				DoJump(false);
			}
		}

	}

}
