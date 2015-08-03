using UnityEngine        ;
using System.Collections ;
using System.Collections.Generic;
using MTON.Class         ;
using MTON.Interface     ;
using MTON.Global        ;

namespace MTON.codeObjects{

  public class oHint_CAMR : cHint{

    public List<Transform> camrTargets;

	public override void doHint (bool bHint, cInput cINPT){
	  base.doHint (bHint, cINPT);
	  if(bHint == true){
	    this.cameraADDTO(this.camrTargets[0]);
	  }
	  else if(bHint == false){
		this.cameraCLEAR();
	  }
	}

	public void cameraADDTO(Transform IN_XFORM){
	  Camera2D cam2D = __gCONSTANT._LEVEL.mCamera;
	  if(cam2D != null){
	    cam2D.focusGroup.Add(IN_XFORM);
	  }
	}

	public void cameraCLEAR(){
	  Camera2D cam2D = __gCONSTANT._LEVEL.mCamera;
	  if(cam2D != null){
	    cam2D.focusGroup.Clear();
	  }
	}

  }

}