#pragma strict

public class __kPnt extends __gameObjectMT{

  public var xformT  : Transform                    ; //target transform
  
  protected var friction : float = 0.95   ;

  protected var v : Vector2 = new Vector2().zero ; //velocity
  protected var a : Vector2 = new Vector2().zero ; //acceleration
  
  protected var bStill : boolean = false ; //if true, object no longer moving
    
  function Start(){
    super.Start();
  }

  function Update () {
    doUpdate();
  }
  
  function doUpdate(){}
    
  function applyFriction(){
    v                   *= friction                ;
    xform.position      += mt_Vec2_to_Vec3(v)      ;
  }
  
  function mt_Vec2_to_Vec3(IN_Vector2:Vector2):Vector3{
    var returnVector3 : Vector3 = Vector3(IN_Vector2.x, IN_Vector2.y, 0.0);
    return returnVector3;
  }
  
  function mt_Vec3_to_Vec2(IN_Vector3:Vector3):Vector2{
    var returnVector2 : Vector2 = Vector2(IN_Vector3.x, IN_Vector3.y);
    return returnVector2;
  }

  function Set_xformT(IN_transform:Transform){
    xformT = IN_transform;
  }

  function Set_friction(IN_friction:float){
    friction = IN_friction;
  }

}
