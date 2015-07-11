using UnityEngine        ;
using System.Collections ;
using MTON.Class         ;
using MTON.Global        ;
using DG.Tweening        ; //import DemiGiant DoTween

namespace MTON.codeObjects{

  public class oEnemy : oPlayer{

	public override void init_Components(){
	  base.init_Components();
      io = __gUtility.AddComponent_mton<cInput_AI>(this.gameObject); //add AI component instead of input from controller
	}

  }

}
