using UnityEngine;
using System.Collections;

namespace MTON.codeObjects{

  public class oBoss : oEnemy {

	public override void Start (){
	  base.Start ();
	  rb.bFall = false;
	}

    public override void doMove (Vector3 moveDir){
//	  base.doMove (moveDir);
	}

	public override void doMove_AI(Vector3 moveDir){
//		  base.doMove_AI(moveDir);
	}
	
	public void Update(){

	}
  }

}