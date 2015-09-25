using UnityEngine        ;
using System             ; //Must use for [Serializable] attr
using System.Collections ;
using DG.Tweening        ;

namespace MTON.Class{

  public class cRadar : MonoBehaviour {

    public delegate void ON_RADAREVENT(bool bEvent) ; //set up delegate
	public ON_RADAREVENT OnRadar_Delegate           ; //delegate instance

    private static Vector3   lastPlayerSighting ;  // Reference to last global sighting of the player.
	public         Transform ui_dpRing          ;
	private        Vector3   ui_Scale           ;

	public         Vector3   vOffset   = Vector3.zero;

	[SerializeField] //else can accidentally assign to lowercase var vs. setter var
	private float distsearch = 5.0f;
	public float distSearch{
	  get{
	    return distsearch;
	  }
	  set{
	    if(value!=distsearch){
		  this.Init();
		}
	  }
	}

	public void Init(){
	  ui_Scale = ui_dpRing.localScale;
	  this.ui_Scale_Actv = ui_Scale * this.distSearch        ;
	  this.ui_Scale_Rest = ui_Scale * this.distSearch * 0.4f ;
	}

	public s_ViewConeProperties sVW = new s_ViewConeProperties();
    [Serializable] //MUST : add so that this custom data type can be displayed in the inspector
	public struct s_ViewConeProperties{

	  public  GameObject gTarget          ;
	  public  string     l_Search         ;
	  public  string     t_Search         ;
      public  float      FOVangle         ;          // Number of degrees, centered on forward, for the enemy see.
	  public  float      FOVmagtd         ;          // distance of Scan
      public  bool       bInSight         ;          // Whether or not the player is currently sighted.
      public  Vector3    thisLastSighting ;          // Last place this enemy spotted the player.
      public  Vector3    previousSighting ;          // Where the player was sighted last frame.

	}

	public bool doViewConeCheck(Transform XFORM_TARGET){
	  return this.doViewConeCheck(XFORM_TARGET, sVW.FOVangle);
	}

    //DOTween variables
    public Tween    tw_Cache ;
	private Vector3 ui_Scale_Rest ;
	private Vector3 ui_Scale_Actv ;

	private bool bradar = false;
	public bool doRadar(bool bActive){
	  if(bActive != this.bradar){
	  if(this.OnRadar_Delegate != null){
        this.OnRadar_Delegate(bActive);
      }
//	  Debug.Log("DO RADAR : Layer : " + this.sVW.l_Search + " Tag : "+ this.sVW.t_Search + this);
	  if(this.tw_Cache!=null){ //reset cache
        this.tw_Cache.Kill()                       ;
		this.ui_dpRing.localScale = this.ui_Scale  ;
	  }
	  if(bActive){ // display highlight active
//	    Debug.Log("RADAR ON");
		if(this.ui_dpRing){
		  this.ui_dpRing.gameObject.SetActive(true);
		  this.ui_dpRing.position = this.transform.position + this.vOffset;
		  this.tw_Cache = this.ui_dpRing.DOScale(this.ui_Scale_Actv.x, 0.90f).SetEase(Ease.InOutElastic);
	    }
	  }
	  else{ // display highlight hide
//	    Debug.Log("RADAR OFF");
		if(this.ui_dpRing){
		  this.ui_dpRing.localScale = this.ui_Scale_Rest;
		  this.tw_Cache = this.ui_dpRing.DOScale(this.ui_Scale.x, 0.15f).OnComplete(()=>{
		    this.ui_dpRing.gameObject.SetActive(false);
		  });
		}
	  }
	  }
	  this.bradar = bActive;
	  if(this.sVW.l_Search!=""){
	    return true;
	  }
	  else{
	    return false;
	  }
	}

	public float magFOV = 3.0f;
	public float angFOV = 11.90f;

	public bool doViewConeCheck(Transform XFORM_TARGET,float IN_FOV) {
      // By default the player is not in sight.
      sVW.bInSight = false ;

	  // determine look Rotation
      Vector3 direction = transform.position - XFORM_TARGET.position; 
//	  Quaternion rLook = this.doRotateTowards(direction);
	  Quaternion rLook; // .doRotateTowards(direction);
	  rLook.doRotateTowards(direction);
            
      // Create a vector from the enemy to the player and store the angle between it and forward.
	  angFOV     = Vector3.Angle(direction, transform.forward) ;
//	  angFOV     = Vector3.Angle(rLook.eulerAngles, transform.forward) ;
	  
//      Debug.DrawLine(this.transform.position, XFORM_TARGET.position, Color.yellow, 0.1f, false) ;
	  Debug.DrawLine(this.transform.position, this.transform.position + this.degreeToPos(angFOV) * magFOV, Color.red, 0.1f, false) ;
       
      // If the angle between forward and where the player is, is less than half the angle of view...
	  if(angFOV < IN_FOV * 0.5f){
        sVW.bInSight = true; // Player is in Sight
        lastPlayerSighting = XFORM_TARGET.transform.position; // Set the last global sighting is the players current position.
      }
	  return sVW.bInSight;
	}

	public Quaternion doRotateTowards(Vector3 IN_DIR){
		float angle = Mathf.Atan2(IN_DIR.y, IN_DIR.x) * Mathf.Rad2Deg;
//		Quaternion rLook = Quaternion.AngleAxis(angle, Vector3.right);
		Quaternion rLook = Quaternion.AngleAxis(angle, Vector3.forward) * Quaternion.Euler(new Vector3(0.0f, -90.0f, 0.0f)); //offset to forward z
		return rLook;
	}

	public Vector3 degreeToPos(float IN_Angle){
	  float radians = IN_Angle * Mathf.Deg2Rad;
      float x = Mathf.Cos(radians);
      float y = Mathf.Sin(radians);
      Vector3 retPos = new Vector3(x, y, 0); //Vector2 is fine, if you're in 2D
	  return retPos;
	}

  }

}
