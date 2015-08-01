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
//	  Debug.Log ("AUDIO ON START");
	}

	private void OnEnable(){  // NOTE : OnEnable fires befor Start.
		cLevel.OnInit_Delegate += Init;
		this.Play();
	}

	private void OnDisable(){
		cLevel.OnInit_Delegate -= Init;
		if(bAnim == true){
			an.OnDuckDelegate -= doPlayDuck;
		}
		this.Stop();
	}

#region iEmit implementation

  public void Init(){  
	  if(snd == null){
		this.snd = __gCONSTANT._LEVEL.getSoundManager()  ;
		Debug.Log ("Getting SoundManager : " + this.snd) ;
	  }
	  an = this.GetComponent<cAnimn>();
	  if(an == true){
	    bAnim = true ;
	  }
	  else{
	    bAnim = false ;
	  }
	  if(bAnim == true){
		an.OnDuckDelegate += doPlayDuck;
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
	Debug.Log ("PlayDuck");
    if(bPlay == true){
	  snd.PlayJump();
	}
  }

}
