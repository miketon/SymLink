#pragma strict

class __pUnit2D extends __gameObjectMT{ //paths to Unit2D

  public    var _io_   : __mt_IO_State_Anim ; //cache to get player state
  protected var pXform : Transform          ; //cache transform that contains player state

  protected var bStill    : boolean = false ; //Is obj not moving?
  protected var bDash     : boolean = false ; //Is obj not moving?
  protected var hFlip     : float   = 1.0   ; //which side is character facing
  protected var onGround  : boolean = false ; //Is obj not moving?

  function Start(){
    super.Start();
    if(!_io_){
      _io_ = pathToComponent(__mt_IO_State_Anim) as __mt_IO_State_Anim;
    }
    if(_io_){  //get parent transform
      pXform = _io_.transform;
    }
    //print(" Root :"+ this + xform.root + " : " + xform.root.GetComponentInChildren(Unit2D) +" : "+xform.root.GetComponentInChildren(Unit2D).transform);
  }

  function Update(){
    super.Update()           ;
    hFlip    = _io_.hFlip    ;
    bStill   = _io_.bStill   ;
    bDash    = _io_.bDash    ;
    onGround = _io_.onGround ;
  }

  function LateUpdate(){  
    super.LateUpdate() ;
  }
  
}
