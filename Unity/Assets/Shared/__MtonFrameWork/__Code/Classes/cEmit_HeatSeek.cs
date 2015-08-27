using UnityEngine;
using System.Collections ;
using MTON.Class         ;
using MTON.Global        ;

public class cEmit_HeatSeek : cEmit_Bullet {

	public Transform target;
	public float rotationSpeed = 1.0f;
    public float moveSpeed = 1.0f;
	public float distLockd = 1.0f; //decrease rotation
	public float dist = 1.0f;
	public float rotMult = 1.0f;
	public float posMult = 1.0f;
	public Vector3 v3Dir;

	public override void Awake (){
	  base.Awake ();
	  this.rBody.isKinematic = true;
	}

	void Start(){
	  moveSpeed = UnityEngine.Random.Range(moveSpeed, moveSpeed * 5.5f);
	  this.rotationSpeed = UnityEngine.Random.Range(this.rotationSpeed, this.rotationSpeed * 1.5f);
	  target = MTON.Global.__gCONSTANT._LEVEL.mPlayer;
	}

	// Update is called once per frame
	void Update () {
//		this.transform.rotation = Quaternion.Lerp(this.transform.rotation, Quaternion.LookRotation(this.target.position - this.transform.position), this.rotationSpeed * Time.deltaTime);
		v3Dir = transform.position - target.position;
		dist = v3Dir.magnitude;
		if(dist < distLockd){
		  rotMult = 1.0f-(dist/distLockd);
		  posMult = 1.0f-(dist/distLockd);
		}
		else{
		  rotMult = 1.0f;
		  posMult = 1.0f;
		}
        float angle = Mathf.Atan2(v3Dir.y, v3Dir.x) * Mathf.Rad2Deg;
		Quaternion newRotation = Quaternion.AngleAxis(angle, Vector3.forward);
//		Quaternion newRotation = Quaternion.AngleAxis(angle, Vector3.right);

		transform.rotation = Quaternion.Slerp(transform.rotation, newRotation, Time.deltaTime * this.rotationSpeed * rotMult);
		transform.position += -transform.right * this.moveSpeed * Time.deltaTime * posMult;
	}
}
