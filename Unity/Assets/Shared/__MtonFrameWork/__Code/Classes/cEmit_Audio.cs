using UnityEngine        ;
using System.Collections ;
using MTON.Interface     ;
using MTON.Class         ;
using MTON.Global        ;

public class cEmit_Audio : MonoBehaviour, IEmit<Rigidbody>{ 

	public  Sound snd           ;
	public  bool  bAnim = false ; // Should I subscribe to cAnimn delegates
	private cAnimn an           ;

	private void Start(){
	  an = this.GetComponent<cAnimn>();
	  if(an == true){
	    bAnim = true ;
	  }
	  else{
	    bAnim = false ;
	  }
	}

	private void OnEnable(){}
	private void OnDisable(){}

#region iEmit implementation

  public void Init(){  

  }
  public void Play(){

  }
  public void Stop(){

  }

  public void OnComplete(){

  }

#endregion
}
