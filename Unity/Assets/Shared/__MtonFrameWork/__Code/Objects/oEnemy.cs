using UnityEngine        ;
using System.Collections ;
using MTON.Class         ;
using MTON.Global        ;
using DG.Tweening        ; //import DemiGiant DoTween

namespace MTON.codeObjects{

  public class oEnemy : oPlayer{

	public Transform player;

	public override void init_Components(){
	  base.init_Components();
      io = __gUtility.AddComponent_mton<cInput_AI>(this.gameObject); //add AI component instead of input from controller
	}

	public override void FixedUpdate(){
	  base.FixedUpdate();
	  float dist = Vector3.Distance(this.xform.position, this.player.position);
	  if(dist < 3.0f){
		Vector3 centerOffset = new Vector3(0.0f, rb.cHeight * 0.5f, 0.0f);
		Debug.DrawLine(this.xform.position + centerOffset, this.player.position + centerOffset, Color.yellow);
	  }
	}

  }

}
