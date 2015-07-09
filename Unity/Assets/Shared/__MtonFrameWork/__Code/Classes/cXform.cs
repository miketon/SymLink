using UnityEngine        ;
using System.Collections ;
using MTON.Interface     ;
using MTON.Global        ;

namespace MTON.Class{

#region    IMPLEMENT INTERFACES : IXform
  public class cXform : MonoBehaviour, IXform{

	public static LayerMask __layerGround;

	public virtual void Awake(){
	  __layerGround = LayerMask.GetMask (__gCONSTANT._FLOOR);
	  //__layerGround = LayerMask.GetMask ("Default");

	  xform = GetComponent<Transform>() ;
      rot   = xform.localRotation       ; //HACK : doing in AfterBind, rotation == parent's
      pos   = xform.position            ;
      scl   = xform.localScale          ;
	}

	public virtual void Start(){
//	  Debug.Log(this + " Start ! ");
	}

    private float groundThreshold = 0.05f; //margin for ground check and object swap out.

    private Vector3   prePos  = Vector3.zero ; //previous position
    private Vector3   curPos  = Vector3.zero ;
	private Vector3   cntPos  = Vector3.zero ; //center position Offset

    public Transform xform   { get; set; }
    //    public float     kFacing { get; set; } //1.0f == forward(or right in 2D); else -1.0f backwards
    public bool      bGround { get; set; }
    public float     dToGround =  0.55f;

    public Vector3 pos{
      get{ return xform.position  ; }
      set{ xform.position = value ; } //??? HACK : Where is implicit "value" coming from???
    }
	public Vector3 cen{
      get{ return cntPos  ; }
      set{ cntPos = value ; } //??? HACK : Where is implicit "value" coming from???
    }
    public Quaternion rot{ 
      get{ return xform.rotation  ; }
      set{ xform.rotation = value ; }
    }
    public Vector3 scl{ get; set;} //??? HACK : Shortcuting scale else DOTWEEN doesn't completely reset size

    public virtual bool OnGround(){
      Debug.DrawLine(xform.position, xform.position + (-Vector3.up * dToGround), Color.yellow, 10.5f, false);
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
      //var pPos = xform.position + (Vector3.right * IN_offSetX)                       ; //calculate vertical and horizontal offset
	  var pPos = xform.position + (Vector3.right * IN_offSetX) + cen              ; //calculate vertical and horizontal offset
      Debug.DrawLine(pPos, pPos + (IN_dir * IN_magnitude), Color.red, 0.5f, false)   ;
      //if (Physics.Raycast(pPos, IN_dir, out hit, Mathf.Abs(IN_magnitude), __layerGround)){            //return hit distance to the ground
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

#region    IMPLEMENT INTERFACES : mCcntl
  public class mCcntl : cXform, IRbody{

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
	public bool  bGround = false ;
	public bool  bCeilng = false ;

	public  Vector3 move      = Vector3.zero ;
	public  Vector3 gravity   = Vector3.zero ;
	public  Vector3 pGrav     = Vector3.zero ; //physic gravity : sampled from the scene

	// cache
    private Quaternion initRot = Quaternion.identity ; //initial rotation of rbody => when crouching reset rotation and velocity
	
	// Use this for initialization
	public virtual void Start () {
		contrl    = this.GetComponent<CharacterController>() ;
		if(contrl != null){
			cRadius   = this.contrl.radius * this.transform.localScale.x  ;
			cHeight   = this.contrl.height * this.transform.localScale.y  ; //character cylinder  y center
			dToGround = (this.cHeight * 0.5f) + 0.10f                     ; //halfing==assumes dToGround measured from center 
			                                                                //HACK: Can't access skin width via code ???, close approximation ??? built in onGround fails ???
			this.pGrav   = Physics.gravity                                ;
			this.cen     = this.contrl.center                             ;
            this.initRot = this.xform.rotation                            ;
		}
		else{
			Debug.LogError("CHARACTER CONTROLLER MISSING : " + this);
		}
		// cache necessary states
	}

	private void FixedUpdate(){
	  bGround = this.OnGround()                                 ; //calculate ground state
	  Fall()                                                    ; //calculate vertical state
	  doJump()                                                  ; //calculate jump state : NOTE : Can't replace with longform bJump prop handler???

	  gravity.x = move.x                                        ; //combine with move from Move()=>oMoveH() for final position
	  gravity.z = 0.0f                                          ; //forces character to stay in 2D plane
	  this.contrl.Move(gravity * Time.deltaTime)                ; //do gravity
	}

	//IMPLEMENT INTERFACES : ICharContrl
	public virtual void Move(Vector3 moveDir){
	  move = moveDir * this.moveForce ; //horizontal transform (move)	
	}

	public virtual void Fall(){ //vertical transform (gravity)
	  if(!bGround){ //in air
	    gravity   += pGrav * Time.deltaTime * this.massForce  ;
		gravity.y += -vy                                      ; //adding velocity
		bCeilng    = this.OnCeiling()                         ;
		
	    if((this.contrl.velocity.y) < 0.1f){        //apply velocity after apex...changed from 0.0=>0.1 to blend apex transition
		  vy += accelY;
		  //vy *= vy + accelY;
		}
		else if(bCeilng){
//		  gravity.y = -accelY;
		  gravity.y = -(gravity.y * 0.33f); //magic numbering until it feels good
		}
	  }
	  else{ //on ground
	    if(Mathf.Abs(this.contrl.velocity.y) < 0.1f){ //and not on rise ; else get caught on ledges
		  ResetVelocity()     ;  //reset velocity when on ground
		}
		if(dash){
		  move *= this.dashForce ;
		}
	  }
	  gravity.y = Mathf.Clamp(gravity.y, -termVeloc, termVeloc) ; //clamp to terminal velocity
	}

	public virtual void doJump(){
	  if(bJump){ //handle jump
	    gravity.y = this.jumpForce ;
		vy        = 0.0f           ;
		bJump     = false          ;
	  }	
	}

	public void Jump(){
	  bJump = true;
	}
		
	public void Flap(){ //air jump
	  bJump = true;
	}

	public void ResetVelocity(){
      gravity = Vector3.zero ;
      vy      = 0.0f         ; //also reset y velocity
    }

	public void ResetRotation(){

	}

	//Utilities -- Not extending xForm so reimplementing ground logic
	public override bool OnGround(){                                          //completely overriding mXform.OnGround() function
	  float bLeftCheck = this.dirRayCheck(-Vector3.up, dToGround, cRadius  * 0.8f) ; //check right edge
	  float bRghtCheck = this.dirRayCheck(-Vector3.up, dToGround, -cRadius * 0.8f) ; //check left edge
	  if (bLeftCheck>0.0f || bRghtCheck>0.0f){                                //either edge connects, then character is onGround
	    return true;
	  }
	  else{
	    return false;
	  }
	}

	public bool OnCeiling(){
	  float ceilingCheck = this.dirRayCheck(Vector3.up, dToGround, 0.0f); //check directly overhead
	  if(ceilingCheck > 0.0f){
	    return true;
	  }
	  else{
	    return false;
	  }
	}


  }
#endregion

  public class mCcntl_mt :  mCcntl{

	public Transform    GroundCheckGroup;
	private Transform[] groundChecks;
	
	public override void Awake (){
	  base.Awake ();
	}

	//Utilities -- Not extending xForm so reimplementing ground logic
	public override bool OnGround(){                                          //completely overriding mXform.OnGround() function
	  return Physics2D.OverlapCircle (GroundCheckGroup.position, 0.15f, __layerGround);
	}
  }

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
