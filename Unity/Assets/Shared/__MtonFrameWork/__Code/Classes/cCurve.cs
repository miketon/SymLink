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

	public float timeSpan  = 1.0f ;
	public float intvValue = 0.0f ; // value of current interval on curve
	public float intvPercn = 0.0f ; // percent position of curve being sampled

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
	public GameObject[] goArray;
	
	private void Start(){
	  if(goArray.Length > 0){

	  }
	}

#region iCurve implementation
	public bool bCurve = true;
	public AnimationCurve curvData;

	public virtual float evalCurve (float IN_PERCENT){ // returning value from curve
	  float retFloat = 0.0f;
	  if(bCurve){
	    retFloat = curvData.Evaluate(intvPercn)   ; // transformed by curve
	  }
	  else{
	    retFloat = intvPercn;
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
	  intvPercn = (Time.time % timeSpan)/timeSpan ; // modulate timeline, and divide by span
	  // filter timeline
	  intvValue = evalCurve(intvPercn);
//	  goArray[0].SetActive(!kStart_End(intvValue));
	  this.kValue(intvValue, this.kThreshold);
//	  this.kStart_End(intvValue); //not fast enough ??? Race condition ???
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
