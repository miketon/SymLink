#pragma strict

public class __kPnt_Spring_mTarget extends __kPnt_Spring{

  public var xformTs : Transform[]   ; //target transform

  function Start () {
    super.Start();
    //xform.position = xformT.position; //don't set to position otherwise, possibly occluded
  }

  function doUpdate(){
    if(xformTs){
      for(var i=0; i<xformTs.Length; i++){
        applySpring(xformTs[i]);
      }

      if(Mathf.Abs(v.magnitude) > 0.001){
        applyFriction();
      }
    }
  }

  function Set_xformTs(IN_xformTs:Transform[]){ //set array of Transforms to multiSpring against
    xformTs = IN_xformTs;
  }

}
