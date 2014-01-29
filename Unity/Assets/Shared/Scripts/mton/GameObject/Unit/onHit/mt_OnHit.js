#pragma strict
@script RequireComponent(Rigidbody)

class mt_OnHit extends __onCollideMT{

  public    var health      : int     = 5            ;
  protected var rbody       : Rigidbody              ;
  protected var iamHit      : boolean                ;

  function Awake(){
    super.Awake()       ;
    rbody = rigidbody   ;
    //DefaultCollider() ;
  }

  function Start(){
    super.Start();
  }

  function Update(){}
  
  function doHit(){
  	if(hitObj){
    	var attackObject:mt_Attack = hitObj.GetComponent(mt_Attack) ;
    	if(attackObject){
          health -= attackObject.amount ; // damage the object
      	  hitDir  = attackObject.vel    ; // store velocity of collision body
    	}
    	nextHit = Time.time + hitRateWait ;
    	//print("I am hit. Health: " + health + " Damaged by : " + hitObj);
    }
  }
}

/*
//particle effect for ground hit
var hitEffect : Transform;

function OnCollisionEnter(collision : Collision) {
//print("I am hit.");
// Debug-draw all contact points and normals
for (var contact : ContactPoint in collision.contacts) {
Debug.DrawRay(contact.point, contact.normal, Color.white);
hitEffect.position=contact.point;
}

// Play a sound if the coliding objects had a big impact.        
if (collision.relativeVelocity.magnitude > 2){
//audio.Play();
}
}
*/
