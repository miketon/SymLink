﻿using UnityEngine        ;
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

	public    oEmitter pw ;

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
//	  this.drawCurve(); // If curve points animate at runtime; update draw per frame
	  if(Input.GetKeyDown(KeyCode.G)){
		this.cTarget.gameObject.SetActive(true);
	    DOTween.To(()=> this.fPath, x=> fPath = x, this.fDest, this.tweenDur)
		.OnComplete(()=>{
		  this.OnComplete();
		  if(this.bPingPong){
		    this.fDest = (this.fDest+1.0f)%2.0f ;
		    this.fPath = 1.0f - this.fDest      ;
		  }
		  else{
		    this.fPath = 0.0f;
		  }
		  this.cTarget.gameObject.SetActive(false);
		});
	  }
	}

#region iPathCV implementation

  public Vector3 vGetCurvePos(float IN_FLOAT){
	return this.vGFX.GetPoint3D01(IN_FLOAT); // return a pos based on value between 0...1 
  }

#endregion

#region iEmit implementation

  public s_EmitProperties sEM = new s_EmitProperties();
  [Serializable] //MUST : add so that this custom data type can be displayed in the inspector
  public struct s_EmitProperties{

		  public float       radiusSPAWN ; //radius used by this.pw.em.doRadiusSEQNC
          public float       fireRate ; //0.15f = default
          public Transform[] firePnts ; //firing point

          public cLevel.e_Bllt[]  eBlt ; // enum for bullet type to emit
		  public cLevel.e_Slams eSlm ; // enum for thomper/slam attack
          public cLevel.e_psFX  eGun ; // enum for GunFlare particle system to emit
  }

  public void Init(){  
     this.xform = new GameObject ( "UI_vObject" ) .transform ; //init xform placeholder to draw VectorLine object at
	 this.vGFX = new VectorLine("vCurve", new List<Vector3>(this.vSegment), null, 2.0f,LineType.Continuous, Joins.None) ;

	 if(this.vLineMaterial != null){
       this.vGFX.material = this.vLineMaterial;
	 }
	 this.drawCurve();

	 //Power emission
     pw = __gUtility.AddComponent_mton<oEmitter>(this.gameObject)  ;
	   pw.em.sEM.fireRate = this.sEM.fireRate ;
	   pw.em.sEM.firePnts = this.sEM.firePnts ;
	   pw.em.sEM.eBlt     = this.sEM.eBlt     ;
	   pw.em.sEM.eGun     = this.sEM.eGun     ;
	   pw.em.Init(); // Sets up firing points; else component.transform is firing point
  }

  public void Play(){
    this.gameObject.SetActive(true);
  }

  public void Stop(){
    this.gameObject.SetActive(false);
  }

  public void OnComplete(){
//	Debug.Log ("OnComplete Position : " + this.cTarget.position);
    this.pw.em.doRadiusSEQNC(true, this.sEM.radiusSPAWN, true); // this.bFaceRt);
    if(this.OnCompleteDelegate != null){
	  this.OnCompleteDelegate(this.cTarget.position);
	}
  }
#endregion

  }

}