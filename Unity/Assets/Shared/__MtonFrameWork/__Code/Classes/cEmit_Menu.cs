using UnityEngine        ;
using System.Collections ;
using UnityEngine.UI     ;
using MTON.Interface     ;
using MTON.Class         ;
using MTON.Global        ;

public class cEmit_Menu : MonoBehaviour, IEmit<Image>{ 

#region iEmit implementation

  public void Init(){  
	if(__gCONSTANT._LEVEL.getSoundManager() != null){
	  Debug.Log ("Sound Manager Exists");
	}
	else{
	  Debug.Log ("Sound Manager Does Not Exists");
	}
  }
  public void Play(){

  }
  public void Stop(){

  }

  public void OnComplete(){

  }

#endregion

}
