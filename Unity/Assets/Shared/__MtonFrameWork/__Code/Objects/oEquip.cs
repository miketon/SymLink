using UnityEngine        ;
using System.Collections ;
using MTON.Class         ;
using MTON.Interface     ;
using MTON.Global        ; 
using DG.Tweening        ; //import DemiGiant DoTween
using System.Collections.Generic ; // Dictioinary

namespace MTON.codeObjects{

public class oEquip : MonoBehaviour{
//public class oEquip : MonoBehaviour, IHint{

//		  public virtual void OnHintStart<T>(T IN_GO) where T:cInput{
//		  public virtual void OnHintStart<cInput>(cInput IN_GO){
//    Renderer rendr = IN_GO.GetComponent<Renderer>();
//			IN_GO.bAttk = true;
//	  Debug.Log("ON HINT START : " + IN_GO);
//    Renderer rendr = IN_GO.gameObject.GetComponent<Renderer>();
//    if(rendr != null){
//      cExit = rendr.material.color ;
//      rendr.material.color = cEntr ;
//    }
//  }

    public cEquip eq;
	public cInput io;
	public cAnimn an;
    private cTween tw;

	private void Awake(){
		io = __gUtility.AddComponent_mton<cInput>(this.gameObject);
		eq = __gUtility.AddComponent_mton<cEquip>(this.gameObject);
		an = __gUtility.AddComponent_mton<cAnimn>(this.gameObject);
        tw = __gUtility.AddComponent_mton<cTween>(this.gameObject);
	}
	private void Start(){
	}

	private void OnEnable(){
		io.OnJumpDelegate += doJump;
		io.OnAttkDelegate += doAttk;
	}

	private void OnDisable(){
		io.OnJumpDelegate -= doJump; //NOTE: remember to remove delegate incase of wierd memory leaks
		io.OnAttkDelegate -= doAttk;
	}
	
	private void doJump(bool bJump){ //NOTE: make sure delegate function structured the same as delegate
	   if(bJump){
	     an.vState = cAnimn.eStateV.Rise;
//		 tw.doCrouch(0.1f);
	   }
	   else{
	     an.vState = cAnimn.eStateV.Fall;
//		 tw.doCrouch(1.0f);
//		 this.transform.localScale = new Vector3();
//		 this.transform.DORotate(Vector3.zero, 1.0f, RotateMode.WorldAxisAdd)
	   }
	}

	private void doAttk(bool bAttk){ //NOTE: make sure delegate function structured the same as delegate
	   Debug.Log("Booger ATTACK : " + bAttk);
	}

  }

}
