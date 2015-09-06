using UnityEngine;
using System.Collections;
using System             ; //Must use for [Serializable] attr
using MTON.Global;
using DG.Tweening        ;
using Kvant;

public class oexSpray : MonoBehaviour {

	public  Spray pRest ; //rest properties
	public  Spray pActv ; //active properties
	private Spray spObj ;

	public Transform target;
	public GameObject light;

	[SerializeField] //else can accidentally assign to lowercase var vs. setter var
	private bool bfire = false;
	public bool bFire{
		get{
		  return bfire;
		}
		set{
		  if(value != bfire){
		    bfire = value;
			if(value){ //do Fire
              __gUtility.GetCopyOf(this.spObj, this.pActv); // INTERESTING : deep copy
			  this.light.SetActive(true);
//			  this.tt ("ONFIRE").ttStop();
			  this.tt("ONFIRE").ttAdd(2.0f, delegate(){this.bFire = false;});
			}
			else{
              __gUtility.GetCopyOf(this.spObj, this.pRest)                                        ; // INTERESTING : deep copy
			  this.light.SetActive(false);
			}
		  }
		}
	}

	void Start(){

	  this.pRest.gameObject.SetActive(false);
	  this.pActv.gameObject.SetActive(false);
	  this.spObj = GameObject.Instantiate<GameObject>(this.pRest.gameObject).GetComponent<Spray>();
	  this.spObj.gameObject.SetActive(true);
	  this.spObj.gameObject.name = "spObj_MTON_Generated";
	  this.spObj.transform.parent = this.pRest.transform.parent;
	  this.spObj.transform.position = this.pRest.transform.position;
	  this.spObj.transform.rotation = this.pRest.transform.rotation;

	  this.light.SetActive(false);

	}

//	        this.boss_MCANM[i] = __gUtility.AddComponent_mton<cMcanm>(this.boss_ANIMS[i].gameObject) ;
//        __gUtility.GetCopyOf(this.boss_MCANM[i], this.mc)                                        ; // INTERESTING : deep copy

	// Update is called once per frame
	void Update () {
	  if(Input.GetKeyDown(KeyCode.P)){
	    this.bFire = !this.bFire;
	  }

	  if(this.bFire){
		Vector3 v3Dir = transform.position - target.position;
		this.doRotateTowards(v3Dir);
	  }
	}

	public float rotSpeed = 1.0f;
	public float rotMult  = 1.0f;
	
	public void doRotateTowards(Vector3 IN_DIR){
		float angle = Mathf.Atan2(IN_DIR.y, IN_DIR.x) * Mathf.Rad2Deg;
//		Quaternion newRotation = Quaternion.AngleAxis(angle, Vector3.right);
		Quaternion newRotation = Quaternion.AngleAxis(angle, Vector3.forward) * Quaternion.Euler(new Vector3(0.0f, -90.0f, 0.0f));
		Quaternion.Slerp(transform.rotation, newRotation, Time.deltaTime * rotSpeed * rotMult);
	}
}
