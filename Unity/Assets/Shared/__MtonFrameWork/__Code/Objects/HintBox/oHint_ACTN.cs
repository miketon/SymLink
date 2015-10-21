using UnityEngine        ;
using System.Collections ;
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
    public e_ActionType actionType;
	public GameObject gSpawn;

    public override void Start(){
	  base.Start();
	  if(gSpawn != null){
		gSpawn = GameObject.Instantiate(gSpawn, this.transform.position, Quaternion.identity) as GameObject;
	  }
	}

	public override void doHint (bool bHint, cInput cINPT){
	  base.doHint (bHint, cINPT);
	  if(bHint == true){
		if(actionType == e_ActionType.Jump){
          cINPT.setJump(true)            ;
	      cINPT.setActV(true)            ;
	      this.tw.doCrouch(0.33f, 0.5f) ;
		}
		else if(actionType == e_ActionType.SpawnPrefab){
		  if(this.gSpawn != null){
		    this.gSpawn.SetActive(true);
		  }
		}
	  }
	  else if(bHint == false){
		if(actionType == e_ActionType.Jump){
	      cINPT.setJump(false)    ;
          cINPT.setActV(false)    ;
	      this.tw.doCrouch(1.0f) ;
		}
		else if(actionType == e_ActionType.SpawnPrefab){
		  if(this.gSpawn != null){
		    this.gSpawn.SetActive(false);
		  }
		}
	  }
	}

  }

}