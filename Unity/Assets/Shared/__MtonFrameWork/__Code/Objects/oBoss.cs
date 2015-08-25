using UnityEngine        ;
using System             ; //NOTE : ??? must import to use anonymous function ; And the IComparable Interface for Dictionary
using System.Collections ;
using MTON.Global        ;
using MTON.Class         ;
using DG.Tweening        ; //import DemiGiant DoTween

namespace MTON.codeObjects{

  public class oBoss : oEnemy {

	public   Transform xformRest ;
	private  Transform pCamera   ; //player camera
	private  Vector3 vCamInitPos = Vector3.zero;
    private  Vector3 vPos_Idle   = Vector3.zero;
    private  Vector3 vPos_Alrt   = Vector3.zero;

	public GameObject[] boss_STATES; //0==Idle

	private void boss_kState(int kIndex){
	  if(boss_STATES[kIndex]){
	    for(int i=0; i<boss_STATES.Length; i++){
		  if(i != kIndex){
		    this.boss_STATES[i].SetActive(false);
		  }
		  else{
		    this.boss_STATES[i].SetActive(true);
		  }
		}
	  }
	}

	private int deletemeIndex = 0;
	public override void Update (){
	  base.Update ();
	  if(this.boss_STATES.Length > 0){
	    if(Input.GetKeyDown(KeyCode.B)){ //barf
//		  this.deletemeIndex++;
//	      this.deletemeIndex = this.deletemeIndex%this.boss_STATES.Length;
//		  this.boss_kState(this.deletemeIndex);
		  this.an.attkST = cAnimn.eStateB.DN;
	    }
		else if(Input.GetKeyDown(KeyCode.L)){ // laser
		  this.an.jumpST = cAnimn.eStateB.UP; // air jump
		}
		else if(Input.GetKeyDown(KeyCode.S)){ // slam
		  this.an.jumpST = cAnimn.eStateB.DN; // regular jump
		}
		else if(Input.GetKeyDown(KeyCode.T)){ // bite
		  this.an.duckST = cAnimn.eStateB.DN; // interesting, since duck is bool, and bite is trigger it doesn't work...
		}
		else{
		  this.an.attkST = cAnimn.eStateB.Idle;
		  this.an.jumpST = cAnimn.eStateB.Idle;
		  this.an.duckST = cAnimn.eStateB.Idle;
		}
	  }
	}

	public override void Start (){
	  base.Start ()                            ;
	  this.xformRest.parent = null             ; //unparent to world so boss transform can compare or chase offset in abs space
	  this.rb.bFall = false                    ; //prevents boss from falling out of level
	  this.vPos_Alrt = this.transform.position ; //assumes starting placement position is the active pos
	  this.vPos_Idle = this.xformRest.position ;
	  this.transform.position = this.vPos_Idle ; //sets boss at rest position

	  this.pCamera     = player.GetComponent<MTON.codeObjects.oPlayer>().camrXFORM;
	  this.vCamInitPos = pCamera.localPosition;
	}

    public AnimationCurve curvALRT;
    public float curvTime = 3.0f;
	public bool bCurve = true;
	private float kTimeCache = 0.0f;
	public override void ai_ALRT (bool bAlert){
	  base.ai_ALRT (bAlert);
	  if(bAlert){
		kTimeCache = 0.0f;
		this.sAI.bIntel = false; //turn off range checking to prevent alert/idle flipping
//		this.transform.position = this.vPos_Alrt;
		// The queue is selected, then restarted by ttReset()
		this.tt("LerpOverwrite").ttReset().ttAdd(delegate(){ //start loop
		  transform.position = this.vPos_Idle;
		})
		.ttLoop(curvTime, delegate(ttHandler loop){ //body of loop
		  if(bCurve){
		    kTimeCache += loop.deltaTime;
			float kPercent = kTimeCache/curvTime;
			float cLookUp  = curvALRT.Evaluate(kPercent);
		    transform.position = Vector3.Lerp(transform.position, this.vPos_Alrt, cLookUp);
		  }
		  else{
		    transform.position = Vector3.Lerp(transform.position, this.vPos_Alrt, loop.deltaTime);
		  }
		})
		.ttAdd(delegate(){ //on end of loop
		  this.sAI.bIntel = true; //turn on range checking
		});
	  }
	}

	public override void ai_AWRE (bool bAware){
	  base.ai_AWRE (bAware);
	  if(bAware){
	    this.pCamera.DOShakePosition(curvTime * 0.75f);
	  }
	}
	
	public override void ai_IDLE (bool bIdle){
	  base.ai_IDLE(bIdle);
	  if(bIdle){
	    this.pCamera.localPosition = this.vCamInitPos;
		kTimeCache = 0.0f;
		this.tt("LerpOverwrite").ttReset()
		.ttAdd(delegate(){
			Debug.Log ("BOSS IDLE : " + this);
		})
		.ttLoop(curvTime, delegate(ttHandler loop){ //body of loop
		  if(bCurve){
		    kTimeCache += loop.deltaTime;
			float kPercent = kTimeCache/curvTime;
			float cLookUp  = curvALRT.Evaluate(kPercent);
		    transform.position = Vector3.Lerp(transform.position, this.vPos_Idle, cLookUp);
		  }
		  else{
		    transform.position = Vector3.Lerp(transform.position, this.vPos_Idle, loop.deltaTime);
		  }
		});
	  }
	}

	// can't be static because of teatime usage
//    public void mtonSEQUENCE<T>(float fTime, Func<T> fnInit, Func<T> fnLoop, Func<T> fnComplete, string fName="mtonSEQUENCE"){
//      this.tt(fName).ttReset()
//	  .ttAdd((Action)fnInit.Invoke())
//	  .ttLoop(fTime, fnLoop())
//	  .ttAdd(fnComplete());
//    }

    public override void doMove (Vector3 moveDir){
//	  base.doMove (moveDir);
	}

	public override void doMove_AI(Vector3 moveDir){
//      base.doMove_AI(moveDir);
	}

  }

}