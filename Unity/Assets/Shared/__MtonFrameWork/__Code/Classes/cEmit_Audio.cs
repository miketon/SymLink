using UnityEngine        ;
using System.Collections ;
using MTON.Interface     ;
using MTON.Class         ;
using MTON.Global        ;

public class cEmit_Audio : MonoBehaviour, IEmit<Rigidbody>{ 

	public  Sound snd           ;
	public  bool  bAnim = true  ; // Should I subscribe to cAnimn delegates
	private cAnimn an           ;

	private void Start(){
	  cLevel.OnInit_Delegate += Init;
	}

	private void OnEnable(){  // NOTE : OnEnable fires befor Start.
	  if(__gCONSTANT._LEVEL != null){
	    this.Init();
	  }
//	  Debug.Log ("ONENABLE");
	  this.Play();
	}

	private void OnDisable(){
	  cLevel.OnInit_Delegate -= Init;
	  if(bAnim == true){
	    an.OnDuckDelegate -= doPlayDuck;
		an.OnJumpDelegate -= doPlayJump;
		an.OnAttkDelegate -= doPlayAttk;
	  }
	  this.Stop();
	}

#region iEmit implementation

  public void Init(){  
	if(__gCONSTANT._LEVEL.getSoundManager() != null){
	  if(snd == null){
		this.snd = __gCONSTANT._LEVEL.getSoundManager()  ;
//		Debug.Log ("Getting SoundManager : " + this.snd) ;
	  }
	  an = this.GetComponent<cAnimn>();
	  if(an == true){
	    bAnim = true ;
		an.OnDuckDelegate += doPlayDuck;
		an.OnJumpDelegate += doPlayJump;
		an.OnAttkDelegate += doPlayAttk;
	  }
	  else{
	    bAnim = false ;
	  }
	}
  }
  public void Play(){

  }
  public void Stop(){

  }

  public void OnComplete(){

  }

#endregion

  private void doPlayDuck(bool bPlay){
    if(bPlay == true){
	  snd.PlayJump();
	}
  }

  private void doPlayJump(bool bPlay){
    if(bPlay == true){
	  snd.PlayJump();
	}
  }

  private void doPlayAttk(bool bPlay){
    if(bPlay == true){
	  snd.PlayClaw();
	}
  }

}
