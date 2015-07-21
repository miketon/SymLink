#pragma strict

class mt_Camxform extends MonoBehaviour{ 

  private class UnitCamera_3D{
    var xform  : Transform;
    var config : Camera ;
    var offSet : Vector3 = Vector3(1.0, 0.0, -10.0) ;
  }

  var mCam  : UnitCamera_3D ;

  private var velocityCam : Vector3 = Vector3(0.0, 0.0, 3.0)    ;
  private var offSetCam   : Vector3 = Vector3.zero              ;
  private var camPoint    : Vector3 = Vector3.zero              ;

  function Start(){
    //super.Start() ;
    InitCamera()  ;
    InitCull()    ; //cull any collision and other unrendered configects
  }

  // update camera 
  function LateUpdate () {
    //super.LateUpdate() ;
    doCameraUpdate()   ;
  }

  function InitCamera(){
    mCam.xform        = Camera.main.transform                                                            ;        
    offSetCam        = mCam.offSet                                                                  ;
    velocityCam      = Vector3(0.0, 0.0, 3.0)                                                           ;
  }

  function doCameraUpdate(){
  /*
    //offSetCam.x        = mCam.offSet.x*-hFlip                                             ; //HACK : Howcome !offSetCam.x * -hFlip
    //offSetCam.z     += -Mathf.Clamp01(control.velocity.y) * 2.0                             ;
    camPoint           = xform.position + camPixelOffset+offSetCam                            ;
    mCam.xform.position = Vector3.SmoothDamp(mCam.xform.position, camPoint, velocityCam, 0.045) ;
  */
  }
  
  function InitCull(){
    var cLayerFlr = LayerMask.NameToLayer("cullFloor") ;
    var cLayerWll = LayerMask.NameToLayer("cullWall")  ;
  }

}