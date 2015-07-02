using UnityEngine        ;
using System.Collections ;
using MTON.Interface     ;
using DG.Tweening        ; //import DemiGiant DoTween


namespace MTON.Class{

#region    IMPLEMENT INTERFACES : IXform
  public class cXform : MonoBehaviour, IXform{

		public virtual void Start(){
			Debug.Log(this + " Start ! ");
		}

    private float groundThreshold = 0.05f; //margin for ground check and object swap out.

    private Vector3   prePos  ; //previous position
    private Vector3   curPos  ;

    public virtual void Awake(){
      xform = GetComponent<Transform>() ;
      rot   = xform.localRotation       ; //HACK : doing in AfterBind, rotation == parent's
      pos   = xform.position            ;
      scl   = xform.localScale          ;
    }

    public Transform xform   { get; set; }
    //    public float     kFacing { get; set; } //1.0f == forward(or right in 2D); else -1.0f backwards
    public bool      bGround { get; set; }
    public float     dToGround =  0.55f;

    public Vector3 pos{
      get{ return xform.position  ; }
      set{ xform.position = value ; } //??? HACK : Where is implicit "value" coming from???
    }
    public Quaternion rot{ 
      get{ return xform.rotation  ; }
      set{ xform.rotation = value ; }
    }
    public Vector3 scl{ get; set;} //??? HACK : Shortcuting scale else DOTWEEN doesn't completely reset size

    public virtual bool OnGround(){
      //      Debug.DrawLine(xform.position, xform.position + (-Vector3.up * dToGround), Color.yellow, 0.5f, false);
      if (ToGround(dToGround) > -groundThreshold){ //return true if ToGround returns hit distance (-1.0f on miss)
        bGround = true; //Always update bGround property
        return bGround; //found ground
      }
      else{
        bGround = false ;
        return bGround  ; //ground not found 
      }
    }

    public float ToGround(float distCheck){ //if > 0.0f == OnGround found
      return dirRayCheck(-Vector3.up, distCheck, 0.0f);
    }

    public float dirRayCheck(Vector3 IN_dir, float IN_magnitude, float IN_offSetX){    //direction, magnitude and x offset
      RaycastHit hit                                                                 ;
      var pPos = xform.position + (Vector3.right * IN_offSetX)                       ; //calculate vertical and horizontal offset
      Debug.DrawLine(pPos, pPos + (IN_dir * IN_magnitude), Color.red, 0.5f, false)   ;
      if (Physics.Raycast(pPos, IN_dir, out hit, Mathf.Abs(IN_magnitude))){            //return hit distance to the ground
        return hit.distance     ; //found ground, returning distance > 0.0f
      }
      else{
        return -groundThreshold ; //not found ground returning < 0.0f
      }
    }

    public virtual void Spawn(Vector3 vecPos){
      xform.position = vecPos           ;
      xform.gameObject.SetActive(true)  ; 
    }

    public virtual void Kill() { 
      xform.gameObject.SetActive(false) ; 
    }

    public Vector2 On_kPos(){
      var kPos = Vector2.zero;
      curPos    = xform.position ;
      if(!OnGround()){ //if not on ground : must be rising or falling
        kPos.y = curPos.y - prePos.y;
      }
      else{
        kPos.y = 0.0f;
      }
      kPos.x = curPos.x - prePos.x;
      prePos = curPos ;
      return kPos;
    }

  }
#endregion

#region    IMPLEMENT INTERFACES : mRbody
  public class mRbody : cXform, IRbody{

    public Rigidbody rbody;  //{ get; set; }
  public Collider  colld;  //{ get; set; }

  public float moveForce = 10.0f ;
  public float jumpForce =  7.0f ;
  public float flapForce =  5.0f ;

  //    private Vector2    kPos    = Vector2.zero        ; //delta position
  private Vector3    dirCach = Vector3.zero        ; //caching last direction to identify change in dir => for more responsive turns
  private Quaternion initRot = Quaternion.identity ; //initial rotation of rbody => when crouching reset rotation and velocity

  public override void Awake(){ //earlier than Start(); need to get xform and rbody
    base.Awake ()                       ;
    rbody   = GetComponent<Rigidbody>() ;
    colld   = GetComponent<Collider> () ;
    initRot = rbody.rotation            ;
  }

  //IMPLEMENT INTERFACES : IRbody
  public void Move(Vector3 moveDir){
    Move(moveDir, 0.9f);
  }

  public virtual void Fall(){
    //N/A RigidBody automatically handles fall/gravity; this function is placeholder for IRbody interface
  }

  public void Move(Vector3 moveDir, float angularVel){
    if(moveDir != dirCach){
      //			Debug.Log(moveDir + " : PREVIOUS MOVE VEC Different : " + prevVec3);
      dirCach               = moveDir                                    ;
      rbody.velocity        = resetVec3(new Vector3(-0.25f, 1.0f, 1.0f)) ; //zeroing out x channel for immediate turn
      //		rbody.angularVelocity = rbody.angularVelocity * -angularVel        ;
      rbody.angularVelocity = new Vector3(0.0f, 0.0f, Mathf.Sign(rbody.angularVelocity.z) * angularVel);
      rbody.AddForce(moveDir, ForceMode.Impulse)                         ; //Add an instant force impulse to the rigidbody, using its mass.
    }
    else{
      rbody.AddForce(moveDir * moveForce);
    }
  }

  public void Jump(){
    rbody.velocity = resetVec3(new Vector3(1.0f, 0.0f, 1.0f))         ; //zeroing out y channel for immediate jump
    rbody.AddForce(Vector3.up * jumpForce,  ForceMode.VelocityChange) ;
  }

  public void Flap(){ //air jump
    rbody.velocity = resetVec3(new Vector3(1.0f, 0.0f, 1.0f))         ; //zeroing out y channel for immediate flap
    rbody.AddForce(Vector3.up * flapForce,  ForceMode.VelocityChange) ;
  }

  public void ResetVelocity(){
    rbody.velocity = Vector3.zero;
  }
  public void ResetRotation(){
    rbody.rotation = initRot;
  }

  private Vector3 resetVec3(Vector3 vReset){ //HACK: Better way????
    Vector3 retVec3 = rbody.velocity ;
    retVec3.x *= vReset.x            ;
    retVec3.y *= vReset.y            ;
    retVec3.z *= vReset.z            ;
    return retVec3                   ;
  }

  }
#endregion

}
