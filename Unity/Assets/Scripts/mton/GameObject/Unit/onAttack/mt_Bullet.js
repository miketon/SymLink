#pragma strict
@script RequireComponent(mt_Attack)

class mt_Bullet extends mt_OnHit{

  var preCollisionDelay : float = 0.05; //Enable collision after bullet has left barrel chamber to prevent self collision
  var postCollisionLife : float = 0.0 ; //postCollisionLife
  var fx_Impact         : GameObject  ; //spawn on Collision if valid
  var maxLife           : float = 2.0 ;

  function Awake(){
    super.Awake()            ;
    DefaultCollider()        ;
    collider.enabled = false ;
  }

  function Start(){
    super.Start()                          ;
    delayColliderEnable(preCollisionDelay) ;
    Destroy(gameObject, maxLife)           ; //get rid of bullet to prevent strays
  }

  function Update(){}

  function OnCollisionEnter(collision : Collision){
    var other = collision.transform;
    //if(!other.CompareTag ("Bullet")){ //Prevents bullet from destroying each other : shotgun blast //resolved with layer matrix
      if(fx_Impact!=null){ // if spawnObject valid/notempty, spawn the object
        Instantiate(fx_Impact, xform.position, xform.rotation) ;
      }
      doCollision();
    //}
  }
  
  function doCollision(){
    Destroy(gameObject, postCollisionLife);
    //print("Destroy:"+collision.transform.name);
  }
}

/*
for (var contact : ContactPoint in collision.contacts) {
//Debug.DrawRay(contact.point, contact.normal, Color.white);
hitEffect.position=contact.point;
hitEffect.particleSystem.Play();

}
*/
