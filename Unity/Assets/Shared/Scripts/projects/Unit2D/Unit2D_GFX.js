#pragma strict

class Unit2D_GFX extends Unit2D{ //map state to animation playback

  protected var animState : animEnum        ; //To be accessed by subclasses ; !protected/private
  protected var animHold  : boolean = false ;
  protected var animMod   : int     = 0     ;

  private class AnimClipSource{  //Hack : To call array of animation
    public static var walk : String[] = ["walk","walk_00","walk_01","walk_02","walk_03","walk_04_interp"] ;
    //public static var walk : String[] = ["walk"] ;
  }

  private  var animSource : AnimClipSource ; // = new AnimClipSource() ;
  private  var clipSource : String[]       ;

  private var _an_ : tk2dSpriteAnimator;

  function initClipSource(){
    var stateSource = animState.GetValues(animEnum)  ;
    clipSource      = new String[stateSource.Length] ;

    for(var i=0; i<stateSource.Length; i++){
      clipSource[i] = stateSource[i].ToString();
    }

    var animLibrary : tk2dSpriteAnimation       ;
    var animClips   : tk2dSpriteAnimationClip[] ;
    if(!_an_){
      _an_        = pathToComponent(tk2dSpriteAnimator) as tk2dSpriteAnimator ;
      animLibrary = _an_.Library                                              ;
      animClips   = animLibrary.clips                                         ;
    }
  }

  function checkClipSource(){                     //Hack : Sets to idle Clips that don't exist
    for(var i=0; i<clipSource.length; i++){       //for any clip that doesn't exist default to idle
      if(_an_.GetClipIdByName(clipSource[i])<0){  //-1 returned when GetClipIdByName is false
        clipSource[i] = clipSource[0];            //HACK:implicitly should be idle
      }
    }
  }

  function Start(){
    super.Start()                                          ;
    initClipSource()                                       ; //must do after super Start because of enum uphill?
    var mod_Length   = animSource.walk.Length              ;
    clipSource[1]    = animSource.walk[animMod%mod_Length] ;
    var mod_0:String = animSource.walk[0%mod_Length]       ;
    var mod_1:String = animSource.walk[1%mod_Length]       ;
    //print("Unit2D_GFX Array : "+mod_1+animClip.walk)     ;
    checkClipSource()                                      ;
  }

  // update Animation Playback 
  function Update () {
    super.Update() ;
    doPlayback()   ;    
  }

  function doPlayback(){
    if(!animHold){
      doClip()         ;
      _io_.Play_Clip() ;
    }
    if(animState != animEnum.duck){
      animHold = false;
    }
    _io_.Set_animHold(animHold);
  }

  function doClip(){
    if (animState == animEnum.walk) {
      _io_.Set_Clip(clipSource[1]) ;
    }
    else if (animState == animEnum.jump){
      _io_.Set_Clip(clipSource[2]) ; //jump
    }
    else if (animState == animEnum.fall) {
      _io_.Set_Clip(clipSource[3]) ; //fall
    }
    else if (animState == animEnum.duck){
      _io_.Set_Clip(clipSource[4]) ; //duck
      animHold = true              ;
    }
    else if (animState == animEnum.dash) {
      _io_.Set_Clip(clipSource[5]) ; //dash
    }
    else {
      _io_.Set_Clip(clipSource[0]) ; //idle
    }
  }

}
