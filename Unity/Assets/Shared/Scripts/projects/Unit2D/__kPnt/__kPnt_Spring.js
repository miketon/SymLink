#pragma strict

public class __kPnt_Spring extends __kPnt{

  public var spring  : float   = 0.1    ;
  public var gravity : float   = -0.135 ;
  public var offSet  : Vector2 = new Vector2().zero ;

  function doUpdate(){
    applySpring(xformT) ;
    v.y = v.y + gravity ; //adding gravity
    if(Mathf.Abs(v.magnitude) > 0.01){
      applyFriction();
    }
  }

  function applySpring(IN_xform:Transform){
    var d:Vector2 = mt_Vec3_to_Vec2(IN_xform.position) - mt_Vec3_to_Vec2(xform.position);
    
    a = d * spring ;
    v = v + a      ;
  }
  
  function applyFriction(){
    super.applyFriction()                          ;
    xform.localPosition += mt_Vec2_to_Vec3(offSet) ;
  }   
}