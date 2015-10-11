using UnityEngine        ;
using System             ; //Must use for [Serializable] attr
using System.Collections ;
using MTON.Class         ;
using MTON.Global        ;
using DG.Tweening        ; //import DemiGiant DoTween
using Vectrosity         ;

namespace MTON.codeObjects{

  public class oVectrosity : MonoBehaviour {

    public VectorObject2D line;
	public Vector2 point0;

    private void Start(){
	  this.point0 = this.line.vectorLine.points2[0];
	}

	private void Update(){
	  var point = this.line.vectorLine.points2[0];
	  point.x = Mathf.Sin (Time.time * 2.0f) * 50.0f + point0.x;
	  point.y = Mathf.Cos (Time.time * 2.0f) * 50.0f + point0.y;
	  this.line.vectorLine.points2[0] = point;
	  this.line.vectorLine.Draw();
	}

  }

}
