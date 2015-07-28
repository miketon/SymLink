using UnityEngine        ;
using System.Collections ;
using MTON.Interface     ;
using MTON.Global        ;

namespace MTON.Class{

  [RequireComponent (typeof (CharacterController))]
    public class cRbody : MonoBehaviour, IRbody{

      public delegate void ON_RBODYEVENT(bool bEvent) ; //set up delegate
      public ON_RBODYEVENT OnGround_Delegate          ; //delegate instance
      public ON_RBODYEVENT OnCeilng_Delegate          ; //delegate instance

      public static LayerMask __layerGround ;
      public static LayerMask __layerEnemy  ;
      public static LayerMask __layerCheck  ;

      public CharacterController contrl ;// { get; set; }

    public  float moveForce = 3.0f  ;
    public  float jumpForce = 4.25f ;
    public  float flapForce = 4.25f ;
    public  float dashForce = 3.0f  ;
    public  float massForce = 1.0f  ;

    public  float accelY    = 0.035f       ;
    public  float moveSpeed = 1.0f         ; //HACK:Must be set to one else fall through ground. IO will normalize to zero per frame.
    private float vy        = 0.0f         ;
    private float termVeloc = 54.0f        ; //Terminal velocity : 54 = a skydiver free-fall to earth according to wikipedia

    public float cRadius   = 0.0f     ; //character controller property; NOTE: these are field values => not informed by
    public float cHeight   = 0.0f     ; //runtime transform/scale

    public bool  bJump   = false ;// { get; set; }
    public bool  dash    = false ;

    public  Vector3 move      = Vector3.zero ;
    public  Vector3 gravity   = Vector3.zero ;
    public  Vector3 pGrav     = Vector3.zero ; //physic gravity : sampled from the scene

    //    private Vector2    kPos    = Vector2.zero        ; //delta position
    private Vector3    dirCach = Vector3.zero        ; //caching last direction to identify change in dir => for more responsive turns
    private Quaternion initRot = Quaternion.identity ; //initial rotation of rbody => when crouching reset rotation and velocity

    public virtual void Awake(){ //earlier than Start(); need to get xform and rbody
      contrl  = GetComponent<CharacterController> () ;
      cen     = contrl.center                        ;
      initRot = transform.rotation                   ;

      __layerGround = LayerMask.GetMask (__gCONSTANT._FLOOR);
      __layerEnemy  = LayerMask.GetMask (__gCONSTANT._ENEMY);
      //	  __layerCheck  = ~((1<<__layerGround)|(1<<__layerEnemy)); //not layerGround or layerEnemy
      __layerCheck  = (1<<__layerGround); //only layerGroudn

      cRadius   = this.contrl.radius * this.transform.localScale.x  ;
      cHeight   = ccHeight(this.contrl)                             ; //halfing==assumes dToGround measured from center 
      this.pGrav   = Physics.gravity                                ;
      this.initRot = this.transform.rotation                        ;

    }

    private float ccHeight(CharacterController IN_CC){
      return (IN_CC.height * this.transform.localScale.y) * 0.5f + 0.10f ; //character cylinder  y center
      //HACK: Can't access skin width via code ???, close approximation ??? built in onGround fails ???
    }

    private void FixedUpdate(){
      this.bGround = this.OnGround()            ; //calculate ground state
      this.cHeight = this.ccHeight(this.contrl) ; //update ccontrol height
      Fall()                                    ; //calculate vertical state
      doJump()                                  ; //calculate jump state : NOTE : Can't replace with longform bJump prop handler???

      gravity.x = move.x                         ; //combine with move from Move()=>oMoveH() for final position
      gravity.z = 0.0f                           ; //forces character to stay in 2D plane
      this.contrl.Move(gravity * Time.deltaTime) ; //do gravity
    }

#region    IMPLEMENT INTERFACES : IRbody

    public bool bground = false;
    public bool bGround { 
      get{
        return this.bground;
      } 
      set{
        if(this.bground != value){
          this.bground = value;
          if(OnGround_Delegate != null){
            OnGround_Delegate(value);
          }
        }
      } 
    }

    public bool bceilng = false;
    public bool bCeilng { 
      get{
        return this.bceilng;
      } 
      set{
        if(this.bceilng != value){
          this.bceilng = value;
          if(OnCeilng_Delegate != null){
            OnCeilng_Delegate(value);
          }
        }
      } 
    }

    public  Vector3 cen { get; set; }        //Center point
    private float   groundThreshold = 0.05f; //margin for ground check and object swap out.

#endregion

#region VState Functions

    //Utilities -- Not extending xForm so reimplementing ground logic

    public virtual bool OnGround(){                                          //completely overriding mXform.OnGround() function
      float bLeftCheck = this.dirRayCheck(-Vector3.up, this.cHeight,  this.cRadius * 0.8f) ; //check right edge
      float bRghtCheck = this.dirRayCheck(-Vector3.up, this.cHeight, -this.cRadius * 0.8f) ; //check left edge
      if (bLeftCheck>0.0f || bRghtCheck>0.0f){                                //either edge connects, then character is onGround
        return true;
      }
      else{
        return false;
      }
    }

    public virtual bool OnCeilng(){
      float ceilingCheck = this.dirRayCheck(Vector3.up, this.cHeight, 0.0f); //check directly overhead
      if(ceilingCheck > 0.0f){
        return true;
      }
      else{
        return false;
      }
    }

#endregion


#region Move Functions

    public virtual void Move(Vector3 moveDir){
      move = moveDir * this.moveForce ; //horizontal transform (move)	
    }

    public virtual void Fall(){ //vertical transform (gravity)

      if(!bGround){ //in air
        gravity   += pGrav * Time.deltaTime * this.massForce  ;
        gravity.y += -vy                                      ; //adding velocity
        bCeilng    = this.OnCeilng()                          ;
        if((this.contrl.velocity.y) < 0.1f){        //apply velocity after apex...changed from 0.0=>0.1 to blend apex transition
          vy += accelY;
        }
        else if(bCeilng){
          gravity.y = -accelY;
        }
      }
      else{ //on ground
        if(Mathf.Abs(this.contrl.velocity.y) < 0.1f){ //and not on rise ; else get caught on ledges
          ResetVelocity()        ;  //reset velocity when on ground
        }
        if(dash){
          move *= this.dashForce ;
        }
      }
      gravity.y = Mathf.Clamp(gravity.y, -termVeloc, termVeloc) ; //clamp to terminal velocity
    }

    public void Jump(){
      bJump = true;
    }

    public void Flap(){ //air jump
      bJump = true;
    }

    public virtual void doJump(){
      if(bJump){ //handle jump
        gravity.y = this.jumpForce ;
        vy        = 0.0f           ;
        bJump     = false          ;
      }	
    }

#endregion

#region Utility Functions

    public void ResetVelocity(){
      gravity = Vector3.zero ;
      vy      = 0.0f         ; //also reset y velocity
    }

    public float dirRayCheck(Vector3 IN_dir, float IN_magnitude, float IN_offSetX){
      return dirRayCheck(IN_dir, IN_magnitude, IN_offSetX, cRbody.__layerCheck);
    }

    public float dirRayCheck(Vector3 IN_dir, float IN_magnitude, float IN_offSetX, int IN_layerMask){    //direction, magnitude and x offset
      RaycastHit hit                                                               ;
      //var pPos = xform.position + (Vector3.right * IN_offSetX)                   ; //calculate vertical and horizontal offset
      var pPos = transform.position + (Vector3.right * IN_offSetX) + cen           ; //calculate vertical and horizontal offset
      Debug.DrawLine(pPos, pPos + (IN_dir * IN_magnitude), Color.red, 0.5f, false) ;
      //if (Physics.Raycast(pPos, IN_dir, out hit, Mathf.Abs(IN_magnitude), __layerGround)){            //return hit distance to the ground
      if (Physics.Raycast(pPos, IN_dir, out hit, Mathf.Abs(IN_magnitude), IN_layerMask)){            //return hit distance to the ground
        return hit.distance     ; //found ground, returning distance > 0.0f
      }
      else{
        return -groundThreshold ; //not found ground returning < 0.0f
      }
    }

#endregion

  }

}
