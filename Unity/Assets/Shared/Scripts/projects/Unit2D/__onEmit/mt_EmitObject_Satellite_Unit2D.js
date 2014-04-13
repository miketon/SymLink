#pragma strict

class mt_EmitObject_Satellite_Unit2D extends mt_EmitObject_Satellite{
  protected var _io_    : __mt_IO_State_Anim ; //object to share player state and animation...character controller state not accessible directly

  function InitParent(){
    if(!_io_){
      _io_ = pathToComponent(__mt_IO_State_Anim) as __mt_IO_State_Anim;
    }
    super.InitParent() ;
  }
  
  function LateUpdate(){
    bSpeed = _io_.bStill ;
    super.LateUpdate()   ;
  }
    
}
