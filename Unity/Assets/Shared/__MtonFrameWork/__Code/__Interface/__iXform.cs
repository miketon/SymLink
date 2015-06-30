using UnityEngine        ;
using System.Collections ;
using DG.Tweening        ; //import tweens

namespace MTON{

  #region Mton Interface
  public interface IXform{
    //Properties
    Transform  xform   { get; set; }
    //	float      kFacing { get; set; } //1.0f == forward(or right in 2D); else -1.0f backwards; based on deltaposition
    //augments io axis reads.  xform rocking back and forth(rolling cube) can mess up facing logic
    bool       bGround { get; set; } 
    Vector3    pos     { get; set; } 
    Vector3    scl     { get; set; } 
    Quaternion rot     { get; set; } 

		//	delegate bool OnGroundCallback() ; //setup delegate
		//  OnGroundCallback OnGround()      ; //define event

    bool  OnGround()                 ; 
	  float ToGround(float distCheck)  ;

    void Spawn(Vector3 vecPos) ; 
    void Kill()                ;

  }

  public interface IRbody{
    //Properties
//	  Not part of Interface, but will likely be implemented
//	  CharacterController contrl { get; set; }
//    Rigidbody           rbody  { get; set; }
//    Collider            colld  { get; set; }

    //Functions
    void Move(Vector3 moveDir) ;
    void Fall()                ; //gravity
    void Jump()                ;
    void Flap()                ; //airjump
    void ResetVelocity()       ;
    void ResetRotation()       ;
  }

  public interface IShapeBlend{
    int blendShapeCount { get; set; }
  }

  public interface IDoTween{ //DoTween
    bool bParticle{ get; set; } //Particle == disappear on action
    //DOTween variables
    Tween    tw_Cache { get; set; }
    Sequence sq_Cache { get; set; }
  }

  public interface IDisplay{ //handles vectrosity and other display states

    void Draw();
    void Kill();

  }

  public interface IAnimn_IO{ //Reacts to IO..doActive onPress and doRest onRelease.  Designed as Member object
    //Properties
    Renderer rendr{ get; set; }

    void anActv();
    void anRest();
  }

  public interface IAnimn_DO{ //Interface for base animation functions : handles view logic and calls IRbody implementation : mRbody/mCcntl

    //transform functions
    void doMove(Vector3 moveDir) ; //walk/run
    void doJump()                ;
    void doFall()                ;
    void doIdle()                ; //standing state
    void doCrouch()              ;

//	Not part of Interface, but will likely be implemented
//  void doNeutral()             ; //neutral state -> good for swapping/activating back main model
//  void doStand()               ;
//  void doApex()                ;

  }

  public interface IAnimn_DOMECANIM{ //Interface to base animation properties to hash to Mecanim properties

	//Properties
//	Not part of Interface, but will likely be implemented
//	Animator _anim       { get; set; } //mecanim    animator
	                                   //int properties to store Animator hashes
	int      _kVertcl_ID { get; set; } //vertical   delta
	int      _kHorizn_ID { get; set; } //horizontal delta
	int      _bGround_ID { get; set; }
	int      _bCrouch_ID { get; set; }
	int      _bForwrd_ID { get; set; } //2d true == right; 3d true == forward

  }

  #endregion

  ///---------------------------------------DEFAULT IMPLEMENTATIONS----------------------------------------------------/// 


  public class mNFace : MonoBehaviour { //base interface implementing class 

    public delegate void mEVENT()           ;
    public event         mEVENT   mON_START ; //init

    public virtual void Start(){
      mVENT(mON_START);
    }

    private void mVENT(mEVENT e){ //??? TODO: Convert to Generic ???
      if(e != null){ //check to see if delegate exists
        e();
      }
      //      else{
      //        Debug.Log (this + "DELEGATE DOESN'T EXIST : "); //HACK : How to represent e??? Can't convert toString()
      //      }
    }
  }

  #region    IMPLEMENT INTERFACES : IXform
  public class mXform : mNFace, IXform {

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


  #region    IMPLEMENT INTERFACES : mXformTween
  public class mXformTween : mXform, IDoTween{
    //DOTween variables
    public bool bParticle{ get; set; } //Particle == disappear on action
    public Tween    tw_Cache { get; set;}
    public Sequence sq_Cache { get; set;}

    public float   durFX = 0.2f                            ; //duration of FX
    public float   sclFX = 1.5f                            ; //scale of FX
    public float   sclGO = 1.0f                            ; //scale of GameObject
    public Vector3 rotFX = new Vector3(-90.0f, 0.0f, 0.0f) ; //rotation of FX

    public override void Awake (){
      base.Awake ()    ;
      bParticle = true ;
    }

    public void doBlink(){
      checkTweenCache();
      tw_Cache = xform.DOScale(scl * sclFX, durFX).SetEase(Ease.OutSine).OnComplete(Kill).From() ;
    }

    public virtual void ResetTweenObj(){
      xform.localScale    = scl ; //reset scale if altered
      xform.localPosition = pos ;
      xform.localRotation = rot ;
    }

    public void doFlare(Vector3 end){
      if(sq_Cache!=null){
        sq_Cache.Kill()        ;
        xform.localScale = scl ; //reset scale if altered
      }
      sq_Cache = DOTween.Sequence()
        .Append(xform.DOLocalMove(end, durFX, false).SetEase(Ease.OutSine).OnComplete(Kill))
        .Insert(0.01f, xform.DOScaleZ(0.005f, durFX*0.75f).SetEase(Ease.OutSine))
        .Insert(0.05f, xform.DOScaleX(0.500f, durFX*0.50f).SetEase(Ease.OutSine));
    } 

    public void doPunch(Vector3 end){
      checkTweenCache();
      //	  tw_Cache = xform.DOPunchPosition(Vector3.right * 10.0f, durFX, 10, 1.0f, false).OnComplete(Kill); //(dirMagaddtocPos, dur, vibrato, elasticity)
      tw_Cache = xform.DOPunchPosition(end, durFX, 10, 5.0f, false).OnComplete(Kill); //(dirMagaddtocPos, dur, vibrato, elasticity)
    }

    public void doShakePosition(){
      checkTweenCache();
      tw_Cache = xform.DOShakePosition(durFX, new Vector3(0.0f, 0.75f, 0.0f), 100, 1.0f).OnComplete(Kill); // .From(); //(duration, strength, int_vibrato, randomness)
    }

    public void doShakeScale(){
      checkTweenCache();
      tw_Cache = xform.DOShakeScale(durFX, new Vector3(1.0f, 1.0f, 1.0f), 1, 90.0f).OnComplete(Kill); // .From(); //(duration, strength, int_vibrato, randomness)
    }

    public void doCrouch(float scaleY){
      checkTweenCache();
      tw_Cache = xform.DOScaleY(scaleY, durFX*0.5f);
    }

    private void checkTweenCache(){
      if(tw_Cache!=null){
        tw_Cache.Kill()                                     ;
        xform.localScale = new Vector3(sclGO, sclGO, sclGO) ;
      }
    }

    public override void Kill(){
      if(bParticle == true){ //if bParticle hide display object
        base.Kill();
      }
      else{ //else re-init state
        ResetTweenObj();
      }
    }

  }
  #endregion

  #region    IMPLEMENT INTERFACES : mRbody
  public class mRbody : mXformTween, IRbody{

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

  #region    IMPLEMENT INTERFACES : mCcntl
  public class mCcntl : mXform, IRbody{

    public CharacterController contrl ;// { get; set; }

	public  float moveForce = 3.0f  ;
	public  float jumpForce = 4.25f ;
	public  float flapForce = 4.25f ;
	public  float dashForce = 3.0f  ;
	public  float massForce = 1.0f  ;

	public  float accelY    = 0.055f       ;
	public  float moveSpeed = 1.0f         ; //HACK:Must be set to one else fall through ground. IO will normalize to zero per frame.
	private float vy        = 0.0f         ;
	private float termVeloc = 54.0f        ; //Terminal velocity : 54 = a skydiver free-fall to earth according to wikipedia

	public float cRadius   = 0.0f     ; //character controller property; NOTE: these are field values => not informed by
	public float cHeight   = 0.0f     ; //runtime transform/scale
//    public float dToGround = 0.0f     ; //distance to ground, pillbox offset to y center HACK: Using mXform.dToGround container...

	public bool  bJump   = false ;// { get; set; }
	public bool  dash    = false ;
	public bool  bGround = false ;
	public bool  bCeilng = false ;

	public  Vector3 hMoveDirOffset = new Vector3(1.0f, 0.0f, -1.5f) ; //controls the facing offset of character on move left and right

	public  Vector3 move      = Vector3.zero ;
	public  Vector3 gravity   = Vector3.zero ;
	public  Vector3 pGrav     = Vector3.zero ; //physic gravity : sampled from the scene
//	private Vector3 _cntVel   = Vector3.zero ;
	
	// Use this for initialization
	void Start () {
		contrl    = this.GetComponent<CharacterController>() ;
		if(contrl != null){
			cRadius   = this.contrl.radius * this.transform.localScale.x         ;
			cHeight   = this.contrl.height * this.transform.localScale.y * 0.5f  ; //character cylinder  y center
			dToGround = this.cHeight + 0.10f                                     ; //HACK: Can't access skin width via code ???, close approximation ??? built in onGround fails ???
			pGrav     = Physics.gravity                                          ;
		}
		else{
			Debug.LogError("CHARACTER CONTROLLER MISSING : " + this);
		}
	}

	private void Update(){
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
	    if((this.contrl.velocity.y) < 0.0f){        //apply velocity after apex
		  vy += accelY;
		}
		else if(bCeilng){
		  gravity.y = -accelY;
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

	}

	public void ResetVelocity(){
      gravity = Vector3.zero ;
      vy      = 0.0f         ; //also reset y velocity
    }

	public void ResetRotation(){

	}

	//Utilities -- Not extending xForm so reimplementing ground logic
	public override bool OnGround(){                                          //completely overriding mXform.OnGround() function
	  float bLeftCheck = this.dirRayCheck(-Vector3.up, dToGround, cRadius ) ; //check right edge
	  float bRghtCheck = this.dirRayCheck(-Vector3.up, dToGround, -cRadius) ; //check left edge
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

  #region    IMPLEMENT INTERFACES : mAnimn
  public class mAnimn : mNFace, IAnimn_IO{

    public Renderer rendr{ get; set; }

    public Color colorRest   = Color.white ; //initial color
    public Color emssnRest   = Color.black ; //initial emission
    public Color colorActive = Color.cyan  ;

    //DOTween variables
    private Tween tw_Cache ; //tween cache -> to interrupt and end currently playing tween

    public float tw_ActvDuration = 0.1f ;
    public float tw_RestDuration = 0.5f ;

    public virtual void Awake(){ //changed from start to awake so rendr component ready to activate and deactivate
      rendr = GetComponent<Renderer>() ;
    }

    //IMPLEMENT INTERFACES : IAnimn
    public virtual void anActv(){
      if(tw_Cache!=null){
        tw_Cache.Kill()                  ;
        rendr.material.color = colorRest ; //reset to rest color
        rendr.material.SetColor("_EmissionColor", emssnRest);
      }
      tw_Cache = rendr.material.DOColor(colorActive, tw_ActvDuration);
      rendr.material.SetColor("_EmissionColor", colorActive);
    }

    public virtual void anRest(){
      if(tw_Cache!=null){
        tw_Cache.Kill()                    ;
        rendr.material.color = colorActive ; //reset to active color
        rendr.material.SetColor("_EmissionColor", colorActive);
      }
      tw_Cache = rendr.material.DOColor(colorRest, tw_RestDuration);
      rendr.material.SetColor("_EmissionColor", emssnRest);
    }

  }
  #endregion

  #region    IMPLEMENT INTERFACES : mAnimnClip
  public class mAnimnClip : mAnimn{ //extending basic mAnimn obj to support clip objects : clip, swap, tween

    public enum eAnimType{
      Clip,
      Swap,
      Tween
    };

    public enum eAnimRetn{ //animReturn type; afterswap update xform, position or rotation
      neutral,
      swapXFORM,
      swapPOS,
      swapROT
    };

    public eAnimType animType = eAnimType.Clip    ;
    public eAnimRetn animRetn = eAnimRetn.neutral ;

  }
  #endregion

  #region    IMPLEMENT INTERFACES : mShapeBlend
  public class mShapeBlend : mNFace, IShapeBlend{

    public int blendShapeCount { get; set; }

    private SkinnedMeshRenderer skinnedMeshRenderer;
    private Mesh skinnedMesh;

    // Use this for initialization
    void Awake () {
      skinnedMeshRenderer = GetComponent<SkinnedMeshRenderer> ();
      if(skinnedMeshRenderer == null){ //MUST: skin mesh must exist to work
        Debug.LogError("SkinnedMeshRenderer must exist : " + this);
      }
      else{
        skinnedMesh = GetComponent<SkinnedMeshRenderer> ().sharedMesh;  //???Shared mesh???
        blendShapeCount = skinnedMesh.blendShapeCount; 
      }
    }

//    private Tween tw_Cache ; //tween cache -> to interrupt and end currently playing tween

    public virtual void doBlend(int indexBlend ,float fValue, float fTime){
//      tw_Cache = DOTween.To(()=> skinnedMeshRenderer.GetBlendShapeWeight(indexBlend), x=>skinnedMeshRenderer.SetBlendShapeWeight(indexBlend, x), fValue, fTime) ;
      DOTween.To(()=> skinnedMeshRenderer.GetBlendShapeWeight(indexBlend), x=>skinnedMeshRenderer.SetBlendShapeWeight(indexBlend, x), fValue, fTime) ;
    }

  }
  #endregion


}
