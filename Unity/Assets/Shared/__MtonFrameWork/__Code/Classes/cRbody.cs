using UnityEngine        ;
using System.Collections ;
using MTON.Interface     ;
using MTON.Global        ;

namespace MTON.Class{

  public class cRbody : mRbody{ }

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
