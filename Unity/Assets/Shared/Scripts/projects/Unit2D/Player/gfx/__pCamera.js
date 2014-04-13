#pragma strict

class __pCamera extends __pUnit2D{               //attaches tk2dCamera.inst camera to entity

  private class UnitCamera_2D{
    var offSet : Vector3 = Vector3(1.0, 0.0, -10.0) ;
  }

  var camera2D  : UnitCamera_2D ;

  private var pCamera   : tk2dCamera ;
  private var pCamXform : Transform  ;

  private var camPixelOffset : Vector2 = Vector3(0.0, 0.0, 0.0) ;

  private var velocityCam : Vector3 = Vector3(0.0, 0.0, 3.0)    ;
  private var offSetCam   : Vector3 = Vector3.zero              ;
  private var camPoint    : Vector3 = Vector3.zero              ;

  function Start(){
    super.Start() ;
    InitCamera()  ;
    InitCull()    ; //cull any collision and other unrendered objects
  }

  // update camera 
  function LateUpdate () {
    super.LateUpdate() ;
    doCameraUpdate()   ;
  }

  function InitCamera(){
    pCamXform        = Camera.main.transform                                                            ; //more reliable than : tk2dCamera.inst.transform        
    pCamera          = pCamXform.GetComponent(tk2dCamera)                                               ; //tk2dCamera.inst; //Global instance, used by sprite and textmesh class to quickly find the tk2dCamera instance.                                                ;
    //camPixelOffset   = Vector3(-pCamera.ScaledResolution.x*0.5, -pCamera.ScaledResolution.y*0.5, -10.0) ;
    camPixelOffset   = Vector3(-pCamera.ScreenExtents.center.x, -pCamera.ScreenExtents.center.y, -10.0) ;
    offSetCam        = camera2D.offSet                                                                  ;
    velocityCam      = Vector3(0.0, 0.0, 3.0)                                                           ;
  }

  function doCameraUpdate(){
    offSetCam.x        = camera2D.offSet.x*-hFlip                                             ; //HACK : Howcome !offSetCam.x * -hFlip
    //offSetCam.z     += -Mathf.Clamp01(control.velocity.y) * 2.0                             ;
    camPoint           = xform.position + camPixelOffset+offSetCam                            ;
    pCamXform.position = Vector3.SmoothDamp(pCamXform.position, camPoint, velocityCam, 0.045) ;
  }
  
  function InitCull(){
    var cLayerFlr = LayerMask.NameToLayer("cullFloor") ;
    var cLayerWll = LayerMask.NameToLayer("cullWall")  ;
    //pCamera.CameraSettings.cullingMask = ~((1<<cLayerFlr) | (1<<cLayerWll)) ;
  }

}
