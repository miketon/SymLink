using UnityEngine        ;
using System             ; //Must use for [Serializable] attr
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

	private void Randomize(){
	  this.Acurv.fTime = UnityEngine.Random.Range(0.0f, 75.0f);
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
		    this.Acurv.curvData= new AnimationCurve(new Keyframe(0, 0.5f), new Keyframe(1, 0.5f));
		    return false;
		  }
		}
		for(int i=0; i<IN_GO.Length; i++){ // Else process curve
	      Debug.Log ("OBJECT IS VALID AT INDEX : "+ i + " : " + IN_GO[i]);
		}
		this.Acurv.curvData = new AnimationCurve(new Keyframe(0, 0), new Keyframe(1, 1));
		return true;
	  }
	  else{
	    Debug.LogError ("BUILD CURVE NO VALID OBJECT : " + IN_GO.Length);
	  }
	  return false;
	}

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
    // Possible to serialize all public fields of the class to a data stream, which allows it to be stored.
	[Serializable] //MUST : add so that this custom data type can be displayed in the inspector
	public struct mCurve {
      //Note: I'm explicitly declaring them as public, but they are public by default. You can use private if you choose.
      public string Name  ;
	  public bool   bCurv ;

	  [ContextMenuItem("DebugHelloWorld", "DebugHelloWorld")] 
	  public AnimationCurve curvData;
	  [ContextMenuItem("Randomize timeSpan", "Randomize")]
	  public float fTime; // Time ; NOTE : Set to 2 if curve of type ping-pong
	  public float fMagn; // Magnitude
	  public float fFreq; // Frequency
	  public float fValu; // Value modified by curvData
	  public float fModu; // Modulus/interval along curvData

	  public float doEvalT(){
	    fModu  = (Time.time % Mathf.Max(fTime, Mathf.Epsilon)) * fFreq ; // modulate timeline, and divide by span
	    if(bCurv){
		  fValu = curvData.Evaluate(fModu)   ; // transformed by curve
		}
		else{
		  fValu = fModu;
	    }
		return fValu * fMagn;
	  }
   
//      Constructor (not necessary, but helpful)
      public mCurve(string name, AnimationCurve curvdata, float ftime=1.0f, float fmagn=1.0f, float ffreq=1.0f, float fvalu=1.0f, float fmodu=1.0f, bool bCurv=true) {
        this.Name     = name;
	    this.curvData = curvdata;
		this.fTime    = ftime;
		this.fMagn    = fmagn;
		this.fFreq    = ffreq;
		this.fValu    = fvalu;
		this.fModu    = fmodu;
		this.bCurv    = bCurv;
      }
	}

	private void DebugHelloWorld(){
	  Debug.Log (" HELLO WORLD MTON !");
	}
	
    [ContextMenuItem("BuildAnimCurve", "BuildCurveFromObjectArrayCONTEXT")] //MUST : Is String Only. Must have unique name; Context function can not overload
	public mCurve Acurv = new mCurve() ;//"FRAMES", curvData); // Animation/Frame
	public mCurve Hcurv = new mCurve() ;//"HORIZN", curvData_H); // Horizontal
	public mCurve Vcurv = new mCurve() ;//"VERTIC", curvData_V); // Vertical

	public Transform xformObj;
    public bool bCurve;

	public void kWave_V(float IN_VALUE){
//	  this.xformObj.SetPosY(IN_VALUE);
//	  this.xformObj.localPosition += Vector3.up * IN_VALUE;
	  this.xformObj.localPosition = new Vector3(xformObj.localPosition.x, IN_VALUE, xformObj.localPosition.z);
	}

	public void kWave_H(float IN_VALUE){
//	  this.xformObj.SetPosX(IN_VALUE);
	  this.xformObj.localPosition = new Vector3(IN_VALUE, xformObj.localPosition.y , xformObj.localPosition.z);
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
	  this.kValue(this.Acurv.doEvalT(), this.kThreshold);
	  this.kWave_H(this.Hcurv.doEvalT());
	  this.kWave_V(this.Vcurv.doEvalT());
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
