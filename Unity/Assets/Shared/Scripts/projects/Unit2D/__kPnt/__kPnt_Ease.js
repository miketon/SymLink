#pragma strict
public class __kPnt_Ease extends __kPnt{

  public var offSetTarget  : Vector2 = new Vector2(0.0, 2.5) ;
  public var easing        : float   = 0.1;
  
  private var kStill : float = 0.05; //threshold for when object is considered still.

  function Start(){
    super.Start();
    offSetTarget += xform.position; //cache spawn point
  }

  function doUpdate(){
    applyEase(offSetTarget) ;
  }
  
  function applyEase(IN_position:Vector2){
    var d:Vector2 = IN_position - mt_Vec3_to_Vec2(xform.position);   
    xform.localPosition += mt_Vec2_to_Vec3(d * easing) ;
    
    if(d.magnitude<kStill){
      bStill = true;
    }
  }
}