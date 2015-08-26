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

	public  Animator[] boss_ANIMS; //0==Idle
    public  float[]   anmEmit_duratn ; // Duration of animation clip

	private void boss_kState(int kIndex){
	  if(boss_ANIMS[kIndex]){
	    for(int i=0; i<boss_ANIMS.Length; i++){
		  if(i != kIndex){
		    this.boss_ANIMS[i].gameObject.SetActive(false);
		  }
		  else{
		    this.boss_ANIMS[i].gameObject.SetActive(true);
		  }
		}
	  }
	}

	private int deletemeIndex = 0;
    private bool animActive = true;
	public override void Update (){
	  base.Update ();
	  if(this.animActive){
	  if(this.boss_ANIMS.Length > 0){
	    if(Input.GetKeyDown(KeyCode.B)){ //bite
//		  this.deletemeIndex++;
//	      this.deletemeIndex = this.deletemeIndex%this.boss_ANIMS.Length;
//		  this.boss_kState(this.deletemeIndex);
//		  this.boss_kState(1);
		  this.an.trigST = cAnimn.eStateB.DN;
	    }
		else if(Input.GetKeyDown(KeyCode.S)){ // slam
//		  this.boss_kState(4);
		  this.an.trigST = cAnimn.eStateB.UP;
		}
		else if(Input.GetKeyDown(KeyCode.F)){ // barf
//		  this.boss_kState(3);
		  this.an.trigST = cAnimn.eStateB.HL;
		}
		else if(Input.GetKeyDown(KeyCode.L)){ // laser
		  this.animActive = false;
//		  this.boss_kState(2);
		  this.an.trigST = cAnimn.eStateB.PW;
		  this.tt("LerpOverwrite").ttReset().ttAdd(this.anmEmit_duratn[2], delegate(){
		    this.animActive = true;
		  });
		}
		else{ // set back to neutral state
//		  this.boss_kState(0);
		  this.an.trigST = cAnimn.eStateB.Idle;
		}
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

	  //get clip duration
	  this.anmEmit_duratn = new float[this.boss_ANIMS.Length];
	  for(int i=0; i<this.boss_ANIMS.Length; i++){
		RuntimeAnimatorController ac = this.boss_ANIMS[i].runtimeAnimatorController;
	    float retDuration = 1.1109f;
	    for(int j=0; j<ac.animationClips.Length; j++){   //For all animations
//			Debug.Log ("ANIMATORCLIP LENGTH : " + ac.animationClips.Length + " j: " + j + " NAME: " + ac.animationClips[j].name+" i: ");
		  if(ac.animationClips[j].name == this.boss_ANIMS[i].name){ // HACK  : PREFAB NAME MUST MATHC CLIP NAME
		    retDuration = ac.animationClips[j].length        ;       // HACK  : Magic numbering; need to find a way to get speed at clip level
							                                         // FIXED : Use Animation.Samples Not State.Speed
							                                         // FIXED : Set Animation.LoopTime = false, to prevent frame bleed over
							                                         // FIXED : Do not set State.Mirror = true, else playback rate becomes choppy
//			  Debug.Log ("Found IDLE : " + retDuration + " : " + this);
		  }
	    }
	    this.anmEmit_duratn[i] = retDuration;
	    }
	}

    public AnimationCurve curvALRT;
    public float curvTime = 3.0f;
	public bool bCurve = true;
	private float kTimeCache = 0.0f;
	private bool bossActive = false;
	public override void ai_ALRT (bool bAlert){
	  base.ai_ALRT (bAlert);
	  if(bAlert){
		kTimeCache = 0.0f;
		this.sAI.bIntel = false; //turn off range checking to prevent alert/idle flipping
//		this.transform.position = this.vPos_Alrt;
		// The queue is selected, then restarted by ttReset()
		if(!this.bossActive){
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
		    this.bossActive = true; // prevents boss from rerising
	      });
		}
		this.sAI.bIntel = true; //turn on range checking
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
		.ttAdd(delegate(){ //start of loop
			Debug.Log ("BOSS IDLE : " + this);
		})
		.ttLoop(curvTime, delegate(ttHandler loop){ // body of loop
		  if(bCurve){
		    kTimeCache += loop.deltaTime;
			float kPercent = kTimeCache/curvTime;
			float cLookUp  = curvALRT.Evaluate(kPercent);
		    transform.position = Vector3.Lerp(transform.position, this.vPos_Idle, cLookUp);
		  }
		  else{
		    transform.position = Vector3.Lerp(transform.position, this.vPos_Idle, loop.deltaTime);
		  }
		})
		.ttAdd(delegate(){ // end of loop
		  this.bossActive = false;
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