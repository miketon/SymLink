#pragma strict

enum animEnum{ //enumerates the possible state of player.  Outside of Class
  idle, //00
  walk, //01
  jump, //02
  fall, //03
  duck, //04
  dash, //05
  ddsh, //06 duck dash
  jdsh, //07 jump dash
  jbll, //08 jump ball
  fdsh, //09 fall dash
  attk, //10
  powr, //11
  spcl, //12
  time  //13 time freeze
}


class __mt_IO_State_Anim extends __mt_IO_State{
  private var _an_      : tk2dSpriteAnimator ;

  static private var animState : animEnum    ; //To be accessed by subclasses   ; !protected/private  
  
  private var animClip  : String          ;
  private var animHold  : boolean = false ;

  function Start(){
    super.Start()                           ;
    _an_      = pathToComponent(tk2dSpriteAnimator) as tk2dSpriteAnimator ;
    animClip  = "Idle";
    animState = animState.idle;
  }

  function LateUpdate () {
    super.LateUpdate() ;
    Play_Clip()        ;
  }
  
  function Play_Clip(){
    animPlay(animClip);
  }
  
  function animPlay(clip:String){
    if (!_an_.IsPlaying(clip)) {  // Only play the clip if it is not already playing.
      if(!animHold){
        _an_.Play(clip);          // Calling play will restart the clip if it is already playing.
      }
    }
  }

  function Set_Anim(IN_animState: animEnum){
    animState = IN_animState;
  }

  function Get_Anim():animEnum{
    return animState ;
  }

  function Set_Clip(IN_animClip:String){
    animClip = IN_animClip;
  }

  function Get_Clip():String{
    return animClip;
  }

  function Set_animHold(IN_animHold:boolean){
    animHold = IN_animHold;
  }

  function Get_animHold():boolean{
    return animHold;
  }
  
}
