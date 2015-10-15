using UnityEngine        ;
using System             ; //Must use for [Serializable] attr
using System.Collections ;
using System.Collections.Generic;
using MTON.Interface     ;
using MTON.Class         ;
using MTON.Global        ;
using DG.Tweening        ; //import DemiGiant DoTween
using Vectrosity         ;

namespace MTON.codeObjects{

  public class oPath_Vectrosity : MonoBehaviour, IPathCV, IEmit<GameObject>{

#region oPath_Vectrosity Delegates

	// Delegate types
	public delegate void  DL_VDIR(Vector3 vPos ) ; // Vector3 type
    public DL_VDIR OnCompleteDelegate            ; // OnComplete passes vPos

#endregion

	[SerializeField] //else can accidentally assign to lowercase var vs. setter var
	private e_Line linetype;
    public e_Line pLineType;
	public e_Line lineType{
	  get{
	    return this.linetype;
	  }
	  set{
	    if(value != this.linetype){
		  if(value == e_Line.Line){              // currently set to line type
		    this.vGFX.Resize(this.cvP.Length) ;  // Resize to line segment
		  }
		  else if(this.linetype == e_Line.Line){ // previously was line type
		    this.vGFX.Resize(this.vSegment)   ;  // Resize to segment default
		  }
		  this.linetype = value;
		  this.drawCurve();
		}
	  }
	}

	public enum e_Line{
	  Spln ,
	  Curv ,
	  CurB , // Bezier Curve must have 4 points
	  Line ,
	  Circ ,
      None ,
    }

	public Transform     cTarget                        ; // Target on Curve based on 0..1
    public Transform[]   cvP         = new Transform[4] ; //bezier curve Points
	public Vector3       fPathCurPos = Vector3.zero     ;
	public bool          bPingPong   = false            ;

	private float fDest = 1.0f;
	[SerializeField] //else can accidentally assign to lowercase var vs. setter var
	private float fpath = 0.0f;
	public float fPath{
	  get{ return this.fpath; }
	  set{
	    if(value != this.fpath){
		  this.fpath = value;
		  if(this.cTarget != null){
		    this.cTarget.position = this.vGetCurvePos(value);
		  }
		}
	  }
	}
    public int vSegment      = 32                   ;
	public Material vLineMaterial                   ;

	private Transform xform ; //rail Object
	private Transform rObj  ; //rail Object

	public  float rSpd   = 1.0f ; //rail speed
	private float rLen   = 0.0f ; //rail Length
	private bool  rDir   = true ; //rail Direction
	private bool  rOri   = true ; //rail Orientation

    public List<Vector3> cvV = new List<Vector3>(4) ; //bezier curve Vector3(positions) ; Using Generic List because Vectrosity does
    public VectorLine    vGFX                       ;

	public List<Vector3> setCurve(Transform[] IN_XFORMS){  //regen curve
	  var retPosFromTransform = new List<Vector3>(IN_XFORMS.Length);
	  for(int i=0; i<IN_XFORMS.Length; i++){
	    retPosFromTransform.Add(IN_XFORMS[i].position);
	  }
	  return retPosFromTransform;
	}

	public virtual void drawCurve(){
	  var vPoints = this.setCurve(this.cvP);
	  if(this.lineType == e_Line.Spln){
	    this.vGFX.MakeSpline(vPoints.ToArray());
	  }
	  else if(this.lineType == e_Line.Curv){
	    this.vGFX.MakeCurve(vPoints.ToArray());
	  }
	  else if(this.lineType == e_Line.CurB){ // Bezier Curve must have 4 points
		if(this.cvP.Length == 4){
		  this.vGFX.MakeCurve(vPoints[0], vPoints[1], vPoints[3], vPoints[2]);
		}
	  }
	  else if(this.lineType == e_Line.Circ){
	    this.vGFX.MakeCircle(this.transform.position, 1.0f); 
	  }
	  else if(this.lineType == e_Line.Line){
	    this.vGFX.MakeSpline(vPoints.ToArray(), false);
	  }
	  this.vGFX.Draw3D();
	}

	private void OnEnable(){
	  this.Init();
	}

	private void OnDisable(){}

	public int tweenDur = 1;
    public float deleteTween = 0.0f;
	private void Update(){
	  this.lineType = pLineType;
//	  this.drawCurve();
	  if(Input.GetKeyDown(KeyCode.G)){
		this.deleteTween.doTweenToValue(64.0f, 2.0f, ()=>{
					Debug.Log ("Done Tweening."); 
					return true;
				});
		this.cTarget.gameObject.SetActive(true);
	    DOTween.To(()=> this.fPath, x=> fPath = x, this.fDest, this.tweenDur)
		.OnComplete(()=>{
//		  __gCONSTANT._LEVEL.FreezeTime(false);
		  if(this.bPingPong){
		    this.fDest = (this.fDest+1.0f)%2.0f ;
		    this.fPath = 1.0f - this.fDest      ;
		  }
		  else{
		    this.fPath = 0.0f;
		  }
		  this.OnComplete();
		  this.cTarget.gameObject.SetActive(false);
		});
	  }
	}

#region iEmit implementation

  public Vector3 vGetCurvePos(float IN_FLOAT){
	return this.vGFX.GetPoint3D01(IN_FLOAT); // return a pos based on value between 0...1 
  }

#endregion

#region iEmit implementation

  public void Init(){  
     this.xform = new GameObject ( "UI_vObject" ) .transform ; //init xform placeholder to draw VectorLine object at
	 this.vGFX = new VectorLine("vCurve", new List<Vector3>(this.vSegment), null, 2.0f,LineType.Continuous, Joins.None) ;

	 if(this.vLineMaterial != null){
       this.vGFX.material = this.vLineMaterial;
	 }
	 this.drawCurve();
  }

  public void Play(){
    this.gameObject.SetActive(true);
  }

  public void Stop(){
    this.gameObject.SetActive(false);
  }

  public void OnComplete(){
	Debug.Log ("OnComplete Position : " + this.cTarget.position);
    if(this.OnCompleteDelegate != null){
	  this.OnCompleteDelegate(this.cTarget.position);
	}
  }
#endregion

  }

}