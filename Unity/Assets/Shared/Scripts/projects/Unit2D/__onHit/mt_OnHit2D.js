#pragma strict
//@script RequireComponent(tk2dSprite)

class mt_OnHit2D extends __onCollideMT{

  public    var health       : int     = 5 ;
  protected var attackObject : mt_Attack   ;
  
  private var _sprite : tk2dSprite;
  
  private var durnHit : float = 0.0;
  
  private var uText_pFab  : String = "UI/kPnt_Ease_Text"; //should contain tk2dTextMesh that eases away and dies

  function Awake(){
    super.Awake()       ;
    //DefaultCollider() ;
  }

  function Start(){
    super.Start();
    
    _sprite  = pathToComponent(tk2dSprite) as tk2dSprite;
    colorInt = _sprite.color            ; //cache initial color
  }

  function Update(){
    super.Update();
  }
  
  function doHit(){
    super.doHit();
    if(hitObj){
      var hit_Attack:mt_Attack = hitObj.GetComponent(mt_Attack) ; //does hitObj contain attack component?
      if(hit_Attack){
        applyHit(hit_Attack);                                     //if true, applyHit
      }
    }
  }

  function applyHit(IN_attackObject:mt_Attack){
    if(mt_TimeStep(hitRateWait, 0)){ //dupe timestep check; allows function to be called in silo
      
      attackObject = IN_attackObject ;
      applyDamage() ; //update state      : health and color
      applyForce()  ; //update hit visual : transform/animate/spawn particle
      //print("I am hit. Health: " + health + " Damaged by : " + hitObj);
    }
  }
  
  function applyDamage(){                
    health -= attackObject.amount      ; // damage the object
    emitTextAtXform(health.ToString()) ; // spawn damage text
    
    _sprite.color = colorHit          ; // flash color
    yield WaitForSeconds(hitRateWait) ;
    _sprite.color = colorFde          ; // fade hit
    yield WaitForSeconds(hitRateWait) ;
    _sprite.color = colorInt          ; // return to original
    
  }
  
  function applyForce(){                 
    hitDir = attackObject.vel ; // store velocity of collision object : mt_Attack calcs velocity
  }
  
  function emitTextAtXform(message:String){
    var hitText : tk2dTextMesh = GameObject.Instantiate(Resources.Load(uText_pFab, tk2dTextMesh)) ;
    hitText.transform.position = xform.position;
    var textMesh               = hitText.GetComponent(tk2dTextMesh) ;
    if(textMesh){
      textMesh.text = message;
      textMesh.Commit();
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
