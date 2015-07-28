using UnityEngine        ;
using System.Collections ;
using MTON.Interface     ;
using MTON.Global        ;

namespace MTON.Class{

  public class cXform : MonoBehaviour, IXform{

#region Implement IXform

    private Vector3   prePos  = Vector3.zero ; //previous position
    private Vector3   curPos  = Vector3.zero ;

    public Transform xform   { get; set; }
    //    public float     kFacing { get; set; } //1.0f == forward(or right in 2D); else -1.0f backwards

    public Vector3 pos{
      get{ return xform.position  ; }
      set{ xform.position = value ; } //??? HACK : Where is implicit "value" coming from???
    }
    public Quaternion rot{ 
      get{ return xform.rotation  ; }
      set{ xform.rotation = value ; }
    }
    public Vector3 scl{ get; set;} //??? HACK : Shortcuting scale else DOTWEEN doesn't completely reset size

    public virtual void Spawn(Vector3 vecPos){
      xform.position = vecPos           ;
      xform.gameObject.SetActive(true)  ; 
    }

    public virtual void Kill() { 
      xform.gameObject.SetActive(false) ; 
    }

    public Vector3 On_kPos(){
      var kPos  = Vector3.zero;
      curPos    = xform.position ;
	  kPos      = curPos - this.prePos;
      prePos    = curPos ;
      return kPos;
    }

#endregion

	public virtual void Awake(){
	  xform = GetComponent<Transform>() ;
      rot   = xform.localRotation       ; //HACK : doing in AfterBind, rotation == parent's
      pos   = xform.position            ;
      scl   = xform.localScale          ;
	}

	public virtual void Start(){
//	  Debug.Log(this + " Start ! ");
	}

  }


}
