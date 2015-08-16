using UnityEngine;
using System.Collections;

public class oMotionCurveTEST : MonoBehaviour {

	public AnimationCurve motionCurve = AnimationCurve.Linear(0, 0, 1, 1);

    public Transform startMarker;
    public Transform endMarker;
    public float speed = 1.0F;
    private float startTime;
    private float journeyLength;

    void Start() {
        startTime = Time.time;
        journeyLength = Vector3.Distance(startMarker.position, endMarker.position);
    }

	public bool bCurveInterp = true;
	public float lifeSpan = 1.0f;
	public float currentAge = 0.0f; 
	public float percentAge = 0.0f; 

	public Vector3 startPos = Vector3.zero;
	public Vector3 endPos   = Vector3.up * 10.0f;

    void Update() {

//		currentAge -= Time.deltaTime;
//		percentAge = 1.0f - (currentAge % lifeSpan);   
//		percentAge = (currentAge % lifeSpan);   
//		Vector3 newPos = Vector3.Lerp(startPos, endPos, percentAge-1.0f);
//		float curvedValue = motionCurve.Evaluate(percentAge-1.0f);
//		Vector3 newPos = Vector3.Lerp(startPos, endPos, percentAge);

		percentAge = (Time.time % lifeSpan)/lifeSpan;   
		Vector3 newPos = Vector3.zero;
		if(bCurveInterp){
		  float curvedValue = motionCurve.Evaluate(percentAge);
		  newPos = Vector3.Lerp(startPos, endPos, curvedValue);
		}
		else{
		  newPos = Vector3.Lerp(startPos, endPos, percentAge);
		}
		transform.position = newPos;
    }

}
