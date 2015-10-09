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

  public class oPath_Vectrosity : MonoBehaviour, IEmit<GameObject> {

    public Transform[]   cvP = new Transform[4]     ; //bezier curve Points
    public List<Vector3> cvV = new List<Vector3>(4) ; //bezier curve Vector3(positions) ; Using Generic List because Vectrosity does
    public int vSegment      = 32                   ;
    public VectorLine vGFX ;
	public Texture vLineMaterial;
	private Transform xform ; //rail Object
	private Transform rObj ; //rail Object

	public  float rSpd   = 1.0f ; //rail speed
	private float rLen   = 0.0f ; //rail Length
	private bool  rDir   = true ; //rail Direction
	private bool  rOri   = true ; //rail Orientation

	public List<Vector3> setCurve(Transform[] IN_XFORMS){  //regen curve
	  var retPosFromTransform = new List<Vector3>(IN_XFORMS.Length);
	  for(int i=0; i<IN_XFORMS.Length; i++){
	    retPosFromTransform.Add(IN_XFORMS[i].position);
	  }
	  return retPosFromTransform;
	}

	private void OnEnable(){
	  this.Init();
	}

	private void OnDisable(){}

#region iEmit implementation

  public void Init(){  
     this.xform = new GameObject ( "UI_vObject" ) .transform ; //init xform placeholder to draw VectorLine object at
//	 var vPoints = new List<Vector3>(){new Vector3(20.0f, 30.0f, 0.0f), new Vector3(100.0f, 50.0f, 0.0f)}; // C#
	 if(this.cvP.Length>=2){ //must have more than 2 points to make a line
	 var vPoints = this.setCurve(this.cvP);
//	 this.vGFX = new VectorLine("vCurve", new Vector3[this.vSegment+1], new Color(0.8f, 0.8f, 0.8f, 0.5f), this.vLineMaterial, 2.0f,LineType.Continuous, Joins.None) ;
//	 this.vGFX = new VectorLine("vCurve", new List<Vector3>[this.vSegment+1], null, 2.0f, LineType.Continuous);
	 this.vGFX = new VectorLine("Line", vPoints, 2.0f); 

//     this.vGFX.material = materials[0]  ;
//	 this.cvV = this.setCurve(this.cvP);
//	 vGFX.MakeCurve(this.cvV, this.vSegment, 0) ;
	 }
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