using UnityEngine        ;
using System.Collections ;
using MTON.Interface     ;
using MTON.Class         ;
using MTON.Global        ;

namespace MTON.Class{

  public class cCurve : MonoBehaviour, ICurve{

    public delegate void DL_Hurt(int IN_HLTH) ; //set up delegate
    public DL_Hurt OnHitdDelegate             ; //delegate instance
    public DL_Hurt OnHealDelegate             ; //delegate instance

    public delegate void DL_Deth(bool bDead)  ; //set up delegate
    public DL_Deth OnDethDelegate             ; //delegate instance

	[ContextMenuItem("Randomize timeSpan", "Randomize")]
	public float timeSpan  = 1.0f ;
	private void Randomize(){
	  timeSpan = UnityEngine.Random.Range(0.0f, 75.0f);
	}
	public void AddTimeSpan(int IN_INT){
	  timeSpan += timeSpanH + timeSpanV + IN_INT;
	}

	public bool BuildCurveFromObjectArrayCONTEXT(){
	  return this.BuildCurveFromObjectArray(this.goArray);
	}
	public bool BuildCurveFromObjectArray(GameObject[] IN_GO){
	  if(IN_GO.Length > 0){
	    Debug.Log ("BUILD CURVE FROM OBJECT : " + IN_GO.Length);
		for(int i=0; i<IN_GO.Length; i++){ // Check to verify each entry not null; escape and fire warning if so
		  if(!IN_GO[i]){
	        Debug.LogError ("OBJECT NOT VALID AT INDEX : "+i+ " : " + IN_GO);
		    this.curvData = new AnimationCurve(new Keyframe(0, 0.5f), new Keyframe(1, 0.5f));
		    return false;
		  }
		}
		for(int i=0; i<IN_GO.Length; i++){ // Else process curve
	      Debug.Log ("OBJECT IS VALID AT INDEX : "+ i + " : " + IN_GO[i]);
		}
		this.curvData = new AnimationCurve(new Keyframe(0, 0), new Keyframe(1, 1));
		return true;
	  }
	  else{
	    Debug.LogError ("BUILD CURVE NO VALID OBJECT : " + IN_GO.Length);
	  }
	  return false;
	}

	public float timeSpanH = 1.0f ;
	public float timeSpanV = 1.0f ;

	public float curveValue  = 0.0f ; // value of current interval on curve
	public float curveValueH = 0.0f ; // value of current interval on curve
	public float curveValueV = 0.0f ; // value of current interval on curve
	public float curvePercn  = 0.0f ; // percent position of curve being sampled
	public float curvePercnH = 0.0f ; // percent position of curve being sampled
	public float curvePercnV = 0.0f ; // percent position of curve being sampled

	public enum eStateB{ // curve States
	  Idle,
	  UP  , // begin of curve Interval
	  DN  , // end of curve Interval
	  HL  , // hold
	  PW  , // kDelta
	}

	public eStateB curvst = eStateB.Idle;
	public eStateB curvST{
			get{
				return curvst;
			}
			set{
				if(value != curvst){
					curvst = value;
					if(value == eStateB.DN){ // Begin of curve Interval
					  Debug.Log ("BEGIN : " + value);
					  this.doKBegin_End(true);
					}
					else if(value == eStateB.UP){ // End of curve Interval
					  Debug.Log ("END : " + value);
					  this.doKBegin_End(false);
					}
				}
			}
		}
	
	public int beatInterval = 3;
    [ContextMenuItem("BuildAnimCurve", "BuildCurveFromObjectArrayCONTEXT")] //MUST : Must have unique name; Context function can not overload
	public GameObject[] goArray;
	
//	private void Start(){
//	  if(goArray.Length > 0){
//
//	  }
//	}

#region iCurve implementation

	public struct mCurve {
      //Variable declaration
      //Note: I'm explicitly declaring them as public, but they are public by default. You can use private if you choose.
      public string Name;
      public bool bCurve;
	  
	  public AnimationCurve curvData;
   
      //Constructor (not necessary, but helpful)
//      public mCurve(string name, AnimationCurve curvdata, bool bcurve=true) {
//        this.Name = name;
//        this.bCurve = bcurve;
//	    this.curvData = curvdata;
//      }
	}

	public mCurve Hcurv = new mCurve(); //"mCurve", this.curvData);

	public bool bCurve = true;
    [ContextMenuItem("BuildAnimCurve", "BuildCurveFromObjectArrayCONTEXT")] //MUST : Must have unique name; Context function can not overload
	public AnimationCurve curvData;
	public AnimationCurve curvData_H;
	public AnimationCurve curvData_V;
	
	public float fWave   = 1.0f ;
	public float fWave_H = 1.0f ;
	public float fWave_V = 1.0f ;

	public Transform xformObj;

	public void kWave_V(float IN_VALUE){
//	  this.xformObj.SetPosY(IN_VALUE);
//	  this.xformObj.localPosition += Vector3.up * IN_VALUE;
	  this.xformObj.localPosition = new Vector3(xformObj.localPosition.x, IN_VALUE, xformObj.localPosition.z);
	}

	public void kWave_H(float IN_VALUE){
//	  this.xformObj.SetPosX(IN_VALUE);
	  this.xformObj.localPosition = new Vector3(IN_VALUE, xformObj.localPosition.y , xformObj.localPosition.z);
	}

	public virtual float evalCurve (float IN_PERCENT, AnimationCurve curvData){ // returning value from curve
	  float retFloat = 0.0f;
	  if(bCurve){
	    retFloat = curvData.Evaluate(IN_PERCENT)   ; // transformed by curve
	  }
	  else{
	    retFloat = IN_PERCENT;
	  }
	  return retFloat;
    }

	public bool bBegin = true;
	private bool kStart_End(float IN_PERCENT){
	  if(this.bBegin){
		if(IN_PERCENT <= 0.05f){
		  curvST = eStateB.DN;
		  return true;
//		  Debug.Log (" BEGIN : " + IN_PERCENT);
		}
	  }
	  else{
		if(IN_PERCENT >= 0.95f){
		  curvST = eStateB.UP;
		  return true;
//		  Debug.Log (" END : " + IN_PERCENT);
		}
	  }
//	  curvST = eStateB.Idle;
	  return false;
	}
	
	public int indexC = 0;
	private float cacheValue = 0.0f;
	private bool kValue(float IN_VALUE, float kThreshold = 0.5f){
	  float k = Mathf.Abs(IN_VALUE)-Mathf.Abs(this.cacheValue);
	  cacheValue = IN_VALUE;
	  if(k > kThreshold){
	    Debug.Log ("DELTA CHANGE : " + IN_VALUE);
	    curvST = eStateB.PW;
		this.go_Activate(this.goArray, this.indexC);
		this.indexC = (this.indexC+1)%this.goArray.Length;
		return true;
	  }
	  curvST = eStateB.Idle;
	  return false;
	}

	private void doKBegin_End(bool IN_BOOL){
	  goArray[0].SetActive(IN_BOOL);
	}

	public float kThreshold = 0.5f;
	public virtual void Update(){
	  // timeline
	  curvePercn  = (Time.time % timeSpan)/timeSpan   ; // modulate timeline, and divide by span
	  curvePercnH = (Time.time % timeSpanH)/timeSpanH ; // modulate timeline, and divide by span
//	  curvePercnV = (Time.time % timeSpanV)/timeSpanV ; // modulate timeline, and divide by span
	  curvePercnV = (Time.time * timeSpanV); // modulate timeline, and divide by span
	  // filter timeline
	  curveValue  = evalCurve(curvePercn * fWave, this.curvData);
	  curveValueH = evalCurve(curvePercnH, this.curvData_H);
	  curveValueV = evalCurve(curvePercnV, this.curvData_V);
//	  goArray[0].SetActive(!kStart_End(curveValue));
	  this.kValue(curveValue, this.kThreshold);
//	  this.kStart_End(curveValue); //not fast enough ??? Race condition ???
	  this.kWave_H(curveValueH * this.fWave_H);
	  this.kWave_V(curveValueV * this.fWave_V);
	}

#endregion

	private void go_Activate(GameObject[] IN_GAMEOBJECTS, int IN_INDEX, bool bActive = true){
	  for(int i=0; i<IN_GAMEOBJECTS.Length; i++){
	    if(i==IN_INDEX){
		  IN_GAMEOBJECTS[i].SetActive(bActive);
		}
		else{
		  IN_GAMEOBJECTS[i].SetActive(!bActive);
		}
	  }
	}
  }
}
