using UnityEngine        ;
using System.Collections ;
using MTON.Interface     ;

namespace MTON.Class{

	public class cInput : IInput{

		// Is input enabled
		public int bInput { get; set; } 

		// Directional Pad
		public void OnDir_Mov(Vector3 vDir){
			Debug.Log("OnDir Move!" + vDir);
		}
		public void OnDir_Aim(Vector3 vDir){
			Debug.Log("OnDir Aim!" + vDir);
		}

	}

}
