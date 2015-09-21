using UnityEngine        ;
using System             ;
using System.Collections ;
using MTON.Interface     ;
using MTON.Global        ;

namespace MTON.Class{

  [RequireComponent (typeof (CharacterController))]
    public class cRbody : MonoBehaviour, IRbody{

      public delegate void ON_RBODYEVENT(bool bEvent) ; //set up delegate
      public ON_RBODYEVENT OnGround_Delegate          ; //delegate instance
      public ON_RBODYEVENT OnCeilng_Delegate          ; //delegate instance
      public ON_RBODYEVENT OnStunnd_Delegate          ; //delegate instance for onHitd => lock controls...etc

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
//    public  float moveSpeed = 1.0f         ; //HACK:Must be set to one else fall through ground. IO will normalize to zero per frame.
    private float vy        = 0.0f         ;
    private float termVeloc = 54.0f        ; //Terminal velocity : 54 = a skydiver free-fall to earth according to wikipedia

    public float cRadius   = 0.0f     ; //character controller property; NOTE: these are field values => not informed by
    public float cHeight   = 0.0f     ; //runtime transform/scale

    public bool  bJump   = false ;// { get; set; }
    public bool  dash    = false ;

    public  Vector3 vMove     = Vector3.zero ;
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
	  __layerCheck  = 0;
      __layerCheck  = ~((1<<__layerGround)|(1<<__layerEnemy)); //not layerGround or layerEnemy
//      __layerCheck  = (1<<__layerGround); //only layerGround

      cRadius   = this.contrl.radius * this.transform.localScale.x  ;
      cHeight   = ccHeight(this.contrl)                             ; //halfing==assumes dToGround measured from center 
      this.pGrav   = Physics.gravity                                ;
      this.initRot = this.transform.rotation                        ;

    }

    private float ccHeight(CharacterController IN_CC){
      return (IN_CC.height * this.transform.localScale.y) * 0.5f + IN_CC.skinWidth + 0.005f ; //character cylinder  y center
      //HACK: Can't access skin width via code ???, close approximation ??? built in onGround fails ???
    }
	
	public bool bFall = true;
    private void FixedUpdate(){
      this.bGround = this.OnGround()            ; //calculate ground state
//      this.cHeight = this.ccHeight(this.contrl) ; //update ccontrol height ??? Why check on every update ???
	  if(bFall){
        Fall()                                   ; //calculate vertical state
	  }
      doJump()                                   ; //calculate jump state : NOTE : Can't replace with longform bJump prop handler???

      gravity.x  = vMove.x                       ; //combine with move from Move()=>oMoveH() for final position
	  gravity.y += vMove.y                       ;
      gravity.z  = 0.0f                          ; //forces character to stay in 2D plane
      this.contrl.Move(gravity * Time.deltaTime) ; //do gravity
    }


#region    IMPLEMENT INTERFACES : IRbody

    [SerializeField] //else can accidentally assign to lowercase var vs. setter var
    private bool bground = false;
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

    [SerializeField] //else can accidentally assign to lowercase var vs. setter var
    private bool bceilng = false;
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

	[SerializeField] //else can accidentally assign to lowercase var vs. setter var
    private bool bstunnd = false;
    public  bool bStunnd { 
      get{
	    return this.bstunnd;
      } 
      set{
        if(this.bstunnd != value){
          this.bstunnd = value;
          if(OnStunnd_Delegate != null){
            this.OnStunnd_Delegate(value);
          }
        }
      } 
    }

    [SerializeField] //else can accidentally assign to lowercase var vs. setter var
	private Vector3 pcen = Vector3.zero;
    public  Vector3 cen { get{return pcen;} set{pcen = value;} }        //Center point

#endregion

#region VState Functions

    //Utilities -- Not extending xForm so reimplementing ground logic
    public virtual bool OnGround(){                                          
	  Vector3 vPos     = this.transform.position + this.cen                                         ;
	  return this.OnGround(vPos, -Vector3.up, new Vector3(this.cRadius * 0.8f, this.cHeight, 0.0f)) ;
	}

	public virtual bool OnGround(Vector3 vPos, Vector3 vDir, Vector3 vCol){                 // vCol: x = cRadius, y = cHeight   
      float bCentCheck = this.dirRayCheck(vPos                            , vDir, vCol.y) ; // check center
      float bRghtCheck = this.dirRayCheck(vPos + ( Vector3.right * vCol.x), vDir, vCol.y) ; // check right edge
      float bLeftCheck = this.dirRayCheck(vPos + (-Vector3.right * vCol.x), vDir, vCol.y) ; // check left edge
	  int countCheck = 0;
	  if(bCentCheck > 0.0f){
	    countCheck=countCheck+2; //center counts more
	  }
	  if(bLeftCheck > 0.0f){
	    countCheck++;
	  }
	  if(bRghtCheck > 0.0f){
	    countCheck++;
	  }

      if (countCheck>0){                                //either edge connects, then character is onGround
		if(countCheck<2){ //Not all rays hitting ground; reduce radius of collider
		  contrl.radius = vCol.x * 0.05f ; //reduce radius collider
		}
		else{
		  contrl.radius = vCol.x         ; //else leave at default
		}
        return true;
      }
      else{
        return false;
      }
    }

    public virtual bool OnCeilng(){
	  Vector3 vPos = this.transform.position + this.cen                                     ;
	  return this.OnCeilng(vPos, Vector3.up, new Vector3(0.0f, this.cHeight * 1.25f, 0.0f)) ;
	}

    public virtual bool OnCeilng(Vector3 vPos, Vector3 vDir, Vector3 vCol){
      float ceilingCheck = dirRayCheck(vPos, vDir, vCol.y) ; //check directly overhead
      if(ceilingCheck > 0.0f){
        return true  ;
      }
      else{
        return false ;
      }
    }

#endregion


#region Move Functions

    public virtual void Move(Vector3 moveDir){
      this.vMove = moveDir * this.moveForce ; //horizontal transform (move)	
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
          ResetVelocity()         ;                   //reset velocity when on ground
        }
        if(dash){
          vMove *= this.dashForce ;
        }
      }
      gravity.y = Mathf.Clamp(gravity.y, -termVeloc, termVeloc) ; //clamp to terminal velocity
    }

    public void Jump(){
      this.bJump = true;
    }

    public void Flap(){ //air jump
      this.bJump = true;
    }

    public virtual void doJump(){
      if(this.bJump){ //handle jump
        gravity.y = this.jumpForce ;
        vy        = 0.0f           ;
        bJump     = false          ;
      }	
    }

	public float magHit = 0.5f ;
	public float posHit = 0.75f;
    public virtual void doHit(Vector3 IN_DIR){
	  this.bStunnd = true;
	  this.transform.position += IN_DIR * this.posHit ; // For crisper effect, go ahead and pop player into position
      this.Move(IN_DIR * this.magHit)                 ; 
	}

#endregion

#region Utility Functions

    public void ResetVelocity(){
      gravity = Vector3.zero ;
      vy      = 0.0f         ; //also reset y velocity
    }

    public float dirRayCheck(Vector3 vPos, Vector3 vDir, float IN_magnitude){
      return this.transform.dirRayCheck(vPos, vDir, IN_magnitude, __layerCheck);
    }

#endregion

  }

}
