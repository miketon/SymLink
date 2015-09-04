using UnityEngine;
using System.Collections;
using MTON.Global;
using Kvant;

public class oexSpray : MonoBehaviour {

	public  Spray pRest ; //rest properties
	public  Spray pActv ; //active properties
	private Spray spObj ;

	void Start(){

	  this.pRest.gameObject.SetActive(false);
	  this.pActv.gameObject.SetActive(false);
	  this.spObj = GameObject.Instantiate<GameObject>(this.pRest.gameObject).GetComponent<Spray>();
	  this.spObj.gameObject.SetActive(true);
	  this.spObj.gameObject.name = "spObj_MTON_Generated";
	  this.spObj.transform.parent = this.pRest.transform.parent;
	  this.spObj.transform.position = this.pRest.transform.position;
	  this.spObj.transform.rotation = this.pRest.transform.rotation;

	}

//	        this.boss_MCANM[i] = __gUtility.AddComponent_mton<cMcanm>(this.boss_ANIMS[i].gameObject) ;
//        __gUtility.GetCopyOf(this.boss_MCANM[i], this.mc)                                        ; // INTERESTING : deep copy

	// Update is called once per frame
	void Update () {
	  if(Input.GetKeyDown(KeyCode.P)){
//	    pRest.gameObject.SetActive(false);
//	    pActv.gameObject.SetActive(true);
        __gUtility.GetCopyOf(this.spObj, this.pActv)                                        ; // INTERESTING : deep copy
	  }
	  else if(Input.GetKeyUp(KeyCode.P)){
//		pRest.gameObject.SetActive(true);
//	    pActv.gameObject.SetActive(false);
        __gUtility.GetCopyOf(this.spObj, this.pRest)                                        ; // INTERESTING : deep copy
	  }
	}
}
