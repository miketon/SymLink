using UnityEngine;
using System.Collections;

[RequireComponent (typeof (Rigidbody))]
public class oRbody_Enable : MonoBehaviour {

	private Rigidbody rb;

    public float fForce =  250.0f ;
	public float fRotat = 1500.0f ;

	public Vector2 rnMnMx = new Vector2(1.0f, 3.0f) ; // Random min/max

	public Vector3 vForce = Vector3.up      ;
	public Vector3 vAxsro = Vector3.forward ;

	void Awake(){
	  rb = this.GetComponent<Rigidbody>();
	}

	void OnEnable(){
	  float randomF = Random.Range(this.rnMnMx[0], this.rnMnMx[1]) ;
	  rb.AddForce(this.vForce * this.fForce)                       ; // pop
	  rb.AddTorque(this.vAxsro * this.fRotat* randomF)             ; // spin
	}

}
