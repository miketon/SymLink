#pragma strict
@script RequireComponent(Collider)

class __onCollideMT extends __gameObjectMT{

  protected var boolHit     : boolean = true         ; //boolHit == eligible for health damage
  protected var hitRateWait : float = 0.15           ; //time (seconds until eligible for next hit)
  protected var nextHit     : float = 0.0            ;
  private   var collObj     : Collision              ;
  protected var hitObj      : Transform              ; //protected is accessible by subclasses
  protected var hitDir      : Vector3 = Vector3.zero ;
  protected var cbody       : Collider               ;
  
  protected var colorInt    : Color              ; //original Color
  protected var colorHit    : Color = Color.red  ; //color on Hit
  protected var colorFde    : Color = Color.cyan ; //color on Hit fade

  function Awake(){
    super.Awake()       ;
    cbody = collider    ; //check for collider
    if(!cbody){
      DefaultCollider() ;
    }    
  }

  function Start(){
    super.Start();
  }

  function OnCollisionEnter(collision : Collision) {
    collObj = collision;
    if(collObj){
      doCollide();
    }
  }
  
  function doCollide(){
    hitObj  = collObj.transform ;
    doHit()                     ; // if so, apply hit
  }
    
  function doHit(){}

  function DefaultCollider(){
    var existingCollider:Collider = this.GetComponent(Collider);
    if(existingCollider == null){ //if no collider exists
      print(this + ": WARNING ASSIGNING DEFAULT COLLIDER : " + transform);
      this.gameObject.AddComponent(BoxCollider);  //assign a box collider
    }
  }

  function delayColliderEnable(delaySeconds){
    yield WaitForSeconds(delaySeconds) ;
    collider.enabled = true            ;
  }
  
  function setHitWait(waitDuration:float){
  	hitRateWait = waitDuration;
  }
}

