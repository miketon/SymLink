using UnityEngine;
using System.Collections;

public class dm_GetScreenPos : MonoBehaviour {
    
    private Transform xform;
    public Transform xformFollow;
    public Vector3 offSet;
    public TextMesh txt;
    private Camera cam;

	// Use this for initialization
	void Start () {
	  txt.text = "Hello World";
	  xform = transform;
	  cam = Camera.main;
	}
	
	// Update is called once per frame
	void Update () {
	  if(xformFollow){
	    xform.position = xformFollow.position + offSet;
	    Vector3 viewPos = cam.WorldToViewportPoint(xform.position);
	    txt.text = ("y: " + viewPos.y + "/nx:" + viewPos.x);
	  }
	}
}
