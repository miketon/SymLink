// -----------------------------------------------
//
// Control Freak - The Ultimate Virtual Controller
// Copyright (C) 2013 Dan's Game Tools
// -----------------------------------------------

#if UNITY_EDITOR || UNITY_WEBPLAYER
#	define DEBUG_KEYBOARD_CONTROL
#endif

using UnityEngine        ;
using System.Collections ;

#if UNITY_EDITOR
using UnityEditor;
#endif

public class TouchStick_mton_Platformer : TouchStick_mton{
/*
  public  PlayerMove_mton_IO mton  ;

  public override void doStick_RELEASED(){
    mton.set_H(0.0f);
    mton.set_V(0.0f);
  }
  public override void doStick_NEUTRAL(){
    doStick_RELEASED();
  }
  public override void doStick_LEFT(){
    mton.set_H(-1.0f) ;
  }

  public override void doStick_RIGHT(){
    mton.set_H(1.0f) ;
  }
  public override void doStick_UP(){
    doStick_RELEASED();
  }
  public override void doStick_DOWN(){
    doStick_RELEASED();
  }
  public override void doButton_LEFT(){
    mton.bFlip = false ; //facing left
    mton.doAttack()    ;
  }

  public override void doButton_RIGHT(){
    mton.bFlip = true ; //facing right
    mton.doAttack()   ;
  }

  public override void doButton_UP(){
  }

  public override void doButton_DOWN(){
  }

  public override void doButton_NEUTRAL(){
    mton.doJump();
  }

  public override void doClearState(){
    mton.clearBoolState();
  }
*/
}
