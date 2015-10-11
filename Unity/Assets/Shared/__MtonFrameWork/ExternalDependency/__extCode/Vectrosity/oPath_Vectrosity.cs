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

	public Transform     cTarget                        ; // Target on Curve based on 0..1
    public Transform[]   cvP         = new Transform[4] ; //bezier curve Points
	public Vector3       fPathCurPos = Vector3.zero     ;

	public float fTempDeleteME = 0.0f;
	[SerializeField] //else can accidentally assign to lowercase var vs. setter var
	private float fpath = 0.0f;
	public float fPath{
	  get{ return this.fpath; }
	  set{
	    if(value != this.fpath){
		  if(this.cTarget != null){
//		    this.fPathCurPos = this.vGetCurvePos(value);
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
	  this.vGFX.MakeSpline(vPoints.ToArray(), this.vSegment, 0);
	  this.vGFX.Draw3D();
	}

	private void OnEnable(){
	  this.Init();
	}

	private void OnDisable(){}

	private void Update(){
	  this.drawCurve();
	  this.fPath = this.fTempDeleteME;
	}

#region iEmit implementation

  public Vector3 vGetCurvePos(float IN_FLOAT){
	return this.vGFX.GetPoint3D01(IN_FLOAT); // return a pos based on value between 0...1 
//    return Vector3.up * this.fPath;
  }

#endregion

#region iEmit implementation

  public void Init(){  
     this.xform = new GameObject ( "UI_vObject" ) .transform ; //init xform placeholder to draw VectorLine object at
	 this.vGFX = new VectorLine("vCurve", new List<Vector3>(this.vSegment+1), null, 2.0f,LineType.Continuous, Joins.None) ;

	 if(this.vLineMaterial != null){
       this.vGFX.material = this.vLineMaterial;
	 }
	 this.drawCurve();
  }

  public void Play(){
//    this.vGFX.SetActive(true);
  }

  public void Stop(){
//    this.vGFX.SetActive(false);
  }

  public void OnComplete(){

  }
#endregion

  }

}