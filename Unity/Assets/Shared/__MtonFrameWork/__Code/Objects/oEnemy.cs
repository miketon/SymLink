using UnityEngine        ;
using System.Collections ;
using MTON.Class         ;
using MTON.Global        ;
using DG.Tweening        ; //import DemiGiant DoTween

namespace MTON.codeObjects{

  public class oEnemy : oPlayer{

	public Transform player          ;
	public Color cActv = Color.red   ;
	public Color cRest = Color.green ;

	public override void init_Components(){
	  base.init_Components();

	  // HACK : removing cInput ; Figure out how to check and do this with __gUtility.AddComponent_mton<T>()
	  cInput removeIO = this.gameObject.GetComponent<cInput>();
	  if(removeIO!=null){
		Destroy(removeIO);
	  }

      io = __gUtility.AddComponent_mton<cInput_AI>(this.gameObject); //add AI component instead of input from controller
	}

	public override void Start(){
	  base.Start();
	  rendr.material.color = cRest;
      __gUtility.CheckAndInitLayer(this.gameObject, __gCONSTANT._ENEMY) ; // HACK :level triggers/hint should ignore ground raycast/collision check!
	}

	public virtual void AI_Actv(bool bActive){
	  if(bActive){
	    rendr.material.color = cActv;
	  }
	  else{
	    rendr.material.color = cRest;
	  }
	}
	
	public override void FixedUpdate(){
	  base.FixedUpdate();
	  float dist = Vector3.Distance(this.xform.position, this.player.position);
	  if(dist < 3.0f){ //Activate
		Vector3 centerOffset = new Vector3(0.0f, rb.cHeight * 0.5f, 0.0f);
		Debug.DrawLine(this.xform.position + centerOffset, this.player.position + centerOffset, Color.yellow);
		AI_Actv(true);
	    io.bInput = true;
	  }
	  else{ //Rest
	    AI_Actv(false);
	    io.bInput = false;
		io.doDPAD_Dir(Vector3.zero);
	  }
	}

  }

}
