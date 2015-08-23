using UnityEngine        ;
using System.Collections ;
using MTON.Global        ;

namespace MTON.codeObjects{

  public class oBoss : oEnemy {

	public   Transform xformRest;
    private  Vector3 vPos_Idle = Vector3.zero;
    private  Vector3 vPos_Alrt = Vector3.zero;

	public override void Start (){
	  base.Start ()                            ;
	  this.xformRest.parent = null             ; //unparent to world so boss transform can compare or chase offset in abs space
	  this.rb.bFall = false                    ; //prevents boss from falling out of level
	  this.vPos_Alrt = this.transform.position ; //assumes starting placement position is the active pos
	  this.vPos_Idle = this.xformRest.position ;
	  this.transform.position = this.vPos_Idle ; //sets boss at rest position
	}

	public override void ai_ALRT (bool bAlert){
	  Debug.Log("BOSS ai_ALRT!!");
	  base.ai_ALRT (bAlert);
	  if(bAlert){
		this.sAI.bIntel = false; //turn off range checking to prevent alert/idle flipping
//		this.transform.position = this.vPos_Alrt;
		// The queue is selected, then restarted by ttReset()
		this.tt("LerpOverwrite").ttReset().ttAdd(delegate(){ //start loop
		  transform.position = this.vPos_Idle;
		})
		.ttLoop(3, delegate(ttHandler loop){ //body of loop
		  transform.position = Vector3.Lerp(transform.position, this.vPos_Alrt, loop.deltaTime);
		})
		.ttAdd(delegate(){ //on end of loop
		  Debug.Log("Lerp Overwrite: Done " + Time.time);
		  this.sAI.bIntel = true; //turn on range checking
		});
	  }
	}

	public override void ai_IDLE (bool bIdle){
	  base.ai_IDLE (bIdle);
	  if(bIdle){
	    this.transform.position = this.vPos_Idle;
	  }
	}

    public override void doMove (Vector3 moveDir){
//	  base.doMove (moveDir);
	}

	public override void doMove_AI(Vector3 moveDir){
//      base.doMove_AI(moveDir);
	}

  }

}