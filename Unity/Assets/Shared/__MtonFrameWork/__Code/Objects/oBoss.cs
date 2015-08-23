using UnityEngine;
using System.Collections;

namespace MTON.codeObjects{

  public class oBoss : oEnemy {

    public  Vector3 vPos_Idle = Vector3.zero;
    private Vector3 vPos_Alrt = Vector3.zero;

	public override void Start (){
	  base.Start ()                            ;
	  this.rb.bFall = false                    ; //prevents boss from falling out of level
	  this.vPos_Alrt = this.transform.position ; //assumes starting placement position is the active pos
	  this.transform.position = this.vPos_Idle ; //sets boss at rest position
	}

	public override void ai_ALRT (bool bAlert){
	  base.ai_ALRT (bAlert);
	  if(bAlert){
		this.transform.position = this.vPos_Alrt;
	  }
	  else{
	    this.transform.position = this.vPos_Idle;
	  }
	}

    public override void doMove (Vector3 moveDir){
//	  base.doMove (moveDir);
	}

	public override void doMove_AI(Vector3 moveDir){
//		  base.doMove_AI(moveDir);
	}
	
	public override void Update(){
	  base.Update();
	}
  }

}