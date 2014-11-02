#pragma strict
class mt_Car_Tank extends mt_Car{

  public var forceRigid_Jump : float = 200000.0 ;
  public var forceRigid_Dash : float = 10000.0  ;
  public var boomParticle    : GameObject       ;
  public var jumpParticle    : GameObject       ;
  public var jumpParticleRing: GameObject       ;
  public var tankBubble      : Transform        ;

  private var netWorkSpawnObj  : mt_NetworkSpawnPoint ;
  private var particleJumpWait : float = 0.5          ;
  private var particleJumpNext : float = 0.0          ;

  function Awake(){
    super.Awake()                           ;
    forceRigid_Jump = forceRigid_Jump * 9.0 ; //magic numbber hack for jump
    netWorkSpawnObj = FindObjectOfType(mt_NetworkSpawnPoint);
    if(!netWorkSpawnObj){
      Debug.LogError(netWorkSpawnObj + " : Does not exist. Add one please.");
    }
    else{
      print(netWorkSpawnObj + " : Exists. Can use to spawn tank/bubble");
    }
  }

  function Start () {
    super.Start();
  }

  function Update () {
    if(queryUserInput){
      if(Input.GetKey (KeyCode.M)){ 
        print("Mike: " + xform + health)   ;
        doHit()                            ;
        health = health - 50               ;
        //lifeCount          = lifeCount-1 ; //reset object state
      }
      super.Update();
      if(onGround){

        if(Input.GetButton("Jump")){
          if(Time.time > particleJumpNext){	//ensures that not more than a single jump is fired off
            rbody.AddForce (Vector3.up * forceRigid_Jump)                 ;
            Instantiate(jumpParticle, xform.position, xform.rotation)     ;
            Instantiate(jumpParticleRing, xform.position, xform.rotation) ;
            particleJumpNext = Time.time + particleJumpWait               ;
          }
        }                                                           
        if(Input.GetKey (KeyCode.LeftShift)){ //DashBoost
          rbody.AddForce(xform.forward * forceRigid_Dash);
        }
        if(Input.GetKey (KeyCode.P)){ //Death Debug.  Remove me.
          health = health -75                                         ;
          iamHit = true                                               ;
          print("Health decreased: " + health)                        ;
          Instantiate(impactParticle, xform.position, xform.rotation) ;
        }

      }
    }
  }

  function FixedUpdate () {
    if(queryUserInput){
      super.FixedUpdate();
    }
  }

  function applyDamage(){
    super.applyDamage();
    if(onGround){
      rbody.AddForce (Vector3.up * forceRigid_Jump * 1.0)      ; // ForceMode.Impulse) ;
      GetComponent.<NetworkView>().RPC ("RPC_onExplosion_CarTank", RPCMode.All) ;
    }
    else{
      rbody.AddForce (Vector3.up * forceRigid_Jump)               ;
      //Instantiate(impactParticle, hitObj.position, xform.rotation) ;
    }
    //health = 1000; //For Debugging
  }

  @RPC
  function RPC_onExplosion_CarTank(){
    Instantiate(boomParticle, xform.position, xform.rotation) ;
  }

  function objRespawn(){
    //super.objRespawn()               ;
    health             = healthMax     ; //Health must be reset first, else can be destroyed prematurely by bullet barrage
    lifeCount          = lifeCount-1   ; //reset object state
    yield WaitForSeconds (respawnWait) ; //NOTE: yield complicates function subclassing/extension, better to separate
    netWorkSpawnObj.PlayerReset()      ;
  }

  function doDeath(){ //overrides super : doesn't destroy object
    queryUserInput = false                        ;
    this.enabled   = false                        ;
    netWorkSpawnObj.PlayerBubbleToggle(true)      ;
    //xform.position.y = 10.0                     ; //awkwardly places defeated tank in the air.
  }

  function playSoundFx(soundClip:AudioClip, randomPitch:boolean, randomRange:float){
    if(!GetComponent.<AudioSource>().isPlaying){
      if(randomPitch){
        GetComponent.<AudioSource>().pitch  = Random.Range(1.0-randomRange, 1.0+randomRange) ;
      }
      GetComponent.<AudioSource>().clip = soundClip ;
      GetComponent.<AudioSource>().Play()           ;
    }
  }

}
