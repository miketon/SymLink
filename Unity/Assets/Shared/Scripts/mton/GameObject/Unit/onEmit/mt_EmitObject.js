#pragma strict
@script RequireComponent(NetworkView)

class mt_EmitObject extends __gameObjectMT{
  private   var nextFire  : float   = 0.0   ;
  private   var durnHold  : float   = 0.0   ;
  private   var boolFire  : boolean = true  ; //eligible to fire
  private   var boolEmit  : boolean = false ; //eligible to emit
  protected var nowFiring : boolean = false ; //currently firing; useful for recoil

  public var eDirection : Vector3 = Vector3(0, 0, 1);

  public var bullet      : GameObject  ;
  public var flareObject : GameObject  ; //spawn on Collision if valid
  public var speed       : float = 75  ;
  public var fireRate    : float = 0.1 ;
  public var emitDelay   : float = 0.0 ; //delay until emitter can fire

  function OnNetworkInstantiate (msg : NetworkMessageInfo) {
    if (!networkView.isMine){    // This is our own player
      SetEnableUserInput(false);
    }
  }

  function Awake(){
    super.Awake();
    eDirection = Vector3(0, 0, speed);
  }

  function Start(){
    super.Start();

  }

  function Update(){
    if(queryUserInput){ 
      if(boolFire){
        super.Update() ;
        io_Fire();
      }
    }
  }

  function io_Fire(){
    if(Input.GetButtonDown("Fire1")){ //start hold counter on Fire Button Down
      durnHold = Time.time + emitDelay ;
      boolEmit = false                 ;
    }  
    if(Time.time > durnHold){         //if time longer than hold duration, then emitter is eligible to fire
      boolEmit = true;
    }  
    if(boolEmit){
      if(Input.GetButton("Fire1")){
        Fire();
      }
    }
  }

  function Fire() {
    if(mt_TimeStep(fireRate, 0)){
      nowFiring = true ;
      doFire()         ;
      if(flareObject!=null){ // if spawnObject valid/notempty, spawn the object
        Instantiate(flareObject, xform.position, xform.rotation) ;
      }
    }
    else{
      nowFiring = false;
    }
  }

  function doFire(){
    RPC_PlayerFire();
  }

  @RPC
  function RPC_PlayerFire () {
    var clone:GameObject     = Instantiate(bullet, xform.position, xform.rotation);
    clone.rigidbody.velocity = xform.TransformDirection(eDirection)               ; //requires @RPC, else use Network.Instantiate
  }

  function SetFireable(in_boolFire:boolean){
    boolFire = in_boolFire;
  }

}
