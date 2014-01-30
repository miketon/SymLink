using UnityEngine;
using System.Collections;

public class PlayerMove_mton_jump : PlayerMove_mton{

	//push player at jump force
	public override void Jump(Vector3 jumpVelocity){
	    print("I am jumping.");
		base.Jump(jumpVelocity);
	}
}