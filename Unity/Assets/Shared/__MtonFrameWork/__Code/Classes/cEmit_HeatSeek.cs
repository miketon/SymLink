using UnityEngine;
using System.Collections;

public class cEmit_HeatSeek : MonoBehaviour {

	public Transform target;
	public float rotationSpeed = 1.0f;
    public float moveSpeed = 1.0f;
	public float distLockd = 1.0f; //decrease rotation

	// Update is called once per frame
	void Update () {
//		this.transform.rotation = Quaternion.Lerp(this.transform.rotation, Quaternion.LookRotation(this.target.position - this.transform.position), this.rotationSpeed * Time.deltaTime);
		Vector3 v3Dir = transform.position - target.position;
//        float angle = Mathf.Atan2(v3Dir.y, v3Dir.x * this.rotationSpeed) * Mathf.Rad2Deg;
        float angle = Mathf.Atan2(v3Dir.y, v3Dir.x) * Mathf.Rad2Deg;
//        transform.eulerAngles = new Vector3(0, 0, angle); // * this.rotationSpeed);
//        Quaternion targetROT= Quaternion.Euler(new Vector3(0, 0, angle));
//		Quaternion.RotateTowards(transform.rotation, targetROT, this.rotationSpeed);
		Quaternion newRotation = Quaternion.AngleAxis(angle, Vector3.forward);
		transform.rotation = Quaternion.Slerp(transform.rotation, newRotation, Time.time * this.rotationSpeed);
		transform.position += -transform.right * this.moveSpeed * Time.deltaTime;
	}
}
