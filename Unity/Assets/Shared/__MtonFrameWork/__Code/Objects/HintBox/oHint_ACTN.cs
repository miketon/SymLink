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
    }
    public e_ActionType actionType;

	public override void doHint (bool bHint, cInput cINPT){
	  base.doHint (bHint, cINPT);
	  if(bHint == true){
		if(actionType == e_ActionType.Jump){
          cINPT.setJump(true)            ;
	      cINPT.setActV(true)            ;
	      this.tw.doCrouch(0.33f, 0.5f) ;
		}
	  }
	  else if(bHint == false){
		if(actionType == e_ActionType.Jump){
	      cINPT.setJump(false)    ;
          cINPT.setActV(false)    ;
	      this.tw.doCrouch(1.0f) ;
		}
	  }
	}

  }

}