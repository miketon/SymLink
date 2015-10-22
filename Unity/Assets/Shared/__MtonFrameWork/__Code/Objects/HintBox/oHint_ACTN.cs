using UnityEngine        ;
using System.Collections ;
using MTON.Global        ;
using MTON.Class         ;
using MTON.Interface     ;

namespace MTON.codeObjects{

  public class oHint_ACTN : cHint{

    public enum e_ActionType{
	  Default      ,  
      Jump         ,  
	  Jump_Forward ,
	  Dir_Change   ,
	  Move_Forward ,
	  SpawnPrefab  ,
    }
    public e_ActionType actionType ;
	public GameObject spawnPrefab  ;
	public Transform  spawnPoint   ;

	public bool bCamShake = false;
	public bool bFrameStr = false;

    public override void Start(){
	  base.Start();
	  if(this.spawnPrefab != null){
		if(this.spawnPoint != null){ // if SpawnPoint exists activate prefab there
		  this.spawnPrefab = GameObject.Instantiate(spawnPrefab, this.spawnPoint.position, this.spawnPoint.rotation) as GameObject;
		}
		else{                        // else use hint trigger transform
		  this.spawnPrefab = GameObject.Instantiate(spawnPrefab, this.transform.position, Quaternion.identity) as GameObject;
		}
	  }
	}

	public override void doHint (bool bHint, GameObject cINPT){
	  base.doHint (bHint, cINPT);
	  if(bHint == true){
		if(actionType == e_ActionType.Jump){
//		  cInput io = cINPT.GetComponentEX<cInput>();
		  cInput io = cINPT.GetComponent<cInput>();
		  if(io != null){
            io.setJump(true)            ;
	        io.setActV(true)            ;
		  }
	      this.tw.doCrouch(0.33f, 0.5f) ;
		}
		else if(actionType == e_ActionType.SpawnPrefab){
		  if(this.spawnPrefab != null){
		    this.spawnPrefab.SetActive(true);
		  }
		}
		if(this.bCamShake){
          __gCONSTANT._LEVEL.CameraShake();
		}
		if(this.bFrameStr){
          __gCONSTANT._LEVEL.FrameStutter();
		}
	  }
	  else if(bHint == false){
		if(actionType == e_ActionType.Jump){
//		  cInput io = cINPT.GetComponentEX<cInput>();
		  cInput io = cINPT.GetComponent<cInput>();
		  if(io != null){
	        io.setJump(false)    ;
            io.setActV(false)    ;
		  }
	      this.tw.doCrouch(1.0f) ;
		}
		else if(actionType == e_ActionType.SpawnPrefab){
		  if(this.spawnPrefab != null){
		    this.spawnPrefab.SetActive(false);
		  }
		}
	  }
	}

  }

}