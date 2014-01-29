#pragma strict

class mt_Swing extends mt_Bullet{

  function Update(){
    super.Update() ;
    print("Swinging : "+ xform.position.x);
  }
  
  function doCollision(){
    //super.doCollision();
    collider.enabled = false ;
  }

}