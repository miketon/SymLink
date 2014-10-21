using UnityEngine;
using System.Collections;

public class mtonBlendTree : MonoBehaviour {

	public Animator animator;
	public float dirMag = 1.0f;

	// Use this for initialization
	void Start () {
		animator = GetComponent<Animator>();
	}
	
	// Update is called once per frame
	void Update () {
//		float v = Input.GetAxisRaw("Vertical") * dirMag;
//		float h = Input.GetAxisRaw("Horizontal") * dirMag;
		float v = Input.GetAxis("Vertical") * dirMag;
		float h = Input.GetAxis("Horizontal") * dirMag;
		animator.SetFloat("io_v", v);
		animator.SetFloat("io_h", h);
		Debug.Log("Get IO : "+ v + h );
	}
}
