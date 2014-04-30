// -----------------------------------------------
// Control Freak - The Ultimate Virtual Controller
// Copyright (C) 2013 Dan's Game Tools
// -----------------------------------------------

#if UNITY_EDITOR || UNITY_WEBPLAYER
#	define DEBUG_KEYBOARD_CONTROL
#endif

using UnityEngine;
using System.Collections;

#if UNITY_EDITOR
using UnityEditor;
#endif

public class TouchStick_mton : MonoBehaviour{

  // ----------------------
  // Controller Variable 
  // ----------------------

  public	TouchController	ctrl                           ;
  public	float buttonScale = 0.1f                       ;
  public  GameObject button_A_Display                    ;
  private Transform button_A_Xform                       ;
  private Vector2 screenRes    = new Vector2(0.0f, 0.0f) ;
  private float screenAspRatio = 0.0f                    ; //controller radius
  private float cRadius        = 0.0f                    ; //controller radius

  // ----------------------
  // Constants
  // ----------------------

  public const int STICK_STICK_ATTACK = 0;
  public const int STICK_WALK         = 1;
  public const int ZONE_PAUSE         = 0;

  private TouchStick  stick_attackStick       ;
  private TouchStick  walkStick               ;
  private TouchZone	  pauseZone               ;
  private TouchStick.StickDir stick_attackDir ; //read for modal switch

  void Awake(){ //caching most used var
    if (this.ctrl != null){

      // ----------------------
      // Stick and Zone Variables
      // ----------------------

      stick_attackStick = this.ctrl.GetStick(STICK_STICK_ATTACK) ;
      walkStick         = this.ctrl.GetStick(STICK_WALK)         ;
      pauseZone         = this.ctrl.GetZone(ZONE_PAUSE)          ;

      // mton Stuff
      screenRes.x               = Screen.width                                                        ;
      screenRes.y               = Screen.height                                                       ;
      screenAspRatio            = screenRes.x/screenRes.y                                             ;
      cRadius                   = stick_attackStick.GetScreenRad ()                                   ; ///screenRes.y                 ;
      button_A_Xform            = button_A_Display.transform                                          ;
      button_A_Xform.localScale = new Vector3(buttonScale, buttonScale * screenAspRatio, buttonScale) ; //scale adjust to screen ratio
    }
  }

  // ----------------------
  // Update()
  // ----------------------

  void Update()
  {
    if (this.ctrl != null){

      // ----------------------
      // Input Handling Code
      // ----------------------

      // ----------------
      // Stick 'STICK_ATTACK'...
      // ----------------

      if(stick_attackStick.JustPressed()){
        Debug.Log ("MTON JUMP Justpressed:" + this);
      }
      else if (stick_attackStick.Pressed()){
        // Your code here.
        stick_attackDir = stick_attackStick.GetFourWayDir() ; //get digital fourway
        if(stick_attackDir == TouchStick.StickDir.NEUTRAL){
          //Debug.Log ("MTON NEUTRAL:" + stick_attackDir)                                 ;
          Rect rectTrue = stick_attackStick.GetRect(true)                                 ;
          Rect rectFals = stick_attackStick.GetRect(false)                                ;
          //Debug.Log ("TRUE :" + rectTrue.x + "FALSE : " + rectFals.x)                   ;
          this.ctrl.GetZone(ZONE_PAUSE).SetRect(new Rect(rectFals.x, rectFals.y, -32,64)) ;
        }
        else if(stick_attackDir == TouchStick.StickDir.U){
          Debug.Log ("MTON UP:" + stick_attackDir);
        }
        else if(stick_attackDir == TouchStick.StickDir.R){
          Vector2 pStick = stick_attackStick.GetScreenPos()                                                  ;
          Debug.Log ("MTON RIGHT:" + stick_attackDir + pStick)                                               ;
          //Vector3 p = Camera.main.ScreenToWorldPoint(new Vector3(pStick.x, screenRes.y-pStick.y, 5.0f))    ; //matching go to cam projection ; 5.0f is a guess.
          Vector2 screenPosNorm = new Vector2(pStick.x/screenRes.x, 1.0f-pStick.y/screenRes.y)               ;
          //Vector3 p =new Vector3(0.25f, 0.25f, 0.0f)                                                       ;
          Vector3 p =new Vector3(screenPosNorm.x, screenPosNorm.y, 0.0f)                                     ;
          //Vector3 p =Camera.main.ViewportToWorldPoint(new Vector3(screenPosNorm.x, screenPosNorm.y, 5.0f)) ;
          button_A_Xform.position = p                                                                        ;
          //button_A_Xform.position = new Vector3(100.0f, 50.0f, 0.0f)                                       ;
        }
      }
      else if(stick_attackStick.JustReleased()){
        Debug.Log ("MTON JUMP RELEASE:" + this);
      }

      // ----------------
      // Stick 'Walk'...
      // ----------------

      if (walkStick.Pressed()){

        Vector2	walkVec             = walkStick.GetVec()            ;
        float	walkTilt              = walkStick.GetTilt()           ;
        float	walkAngle             = walkStick.GetAngle()          ;
        TouchStick.StickDir	walkDir = walkStick.GetDigitalDir(true) ;
        Vector3	walkWorldVec        = walkStick.GetVec3d(false, 0)  ;

        // Your code here.
      }

      // ----------------
      // Zone 'PAUSE'...
      // ----------------

      // Uni-touch pressed...
      if (pauseZone.UniPressed()){
        float	pauseUniDur            = pauseZone.GetMultiTouchDuration() ;
        Vector2	pauseUniPos          = pauseZone.GetMultiPos()           ;
        Vector2	pauseUniDragDelta    = pauseZone.GetMultiDragDelta()     ;
        Vector2	pauseUniRawDrawDelta = pauseZone.GetMultiDragDelta(true) ;
      }

      // Uni-Touch Just Released
      if (pauseZone.JustUniReleased()){
        Vector2	pauseUniRelStartPos = pauseZone.GetReleasedUniStartPos()                                                               ;
        Vector2	pauseUniRelEndPos   = pauseZone.GetReleasedUniEndPos()                                                                 ;
        int 	pauseUniRelStartBox   = TouchZone.GetBoxPortion(2, 2, pauseZone.GetReleasedUniStartPos(TouchCoordSys.SCREEN_NORMALIZED)) ;
        int 	pauseUniRelEndBox     = TouchZone.GetBoxPortion(2, 2, pauseZone.GetReleasedUniEndPos(TouchCoordSys.SCREEN_NORMALIZED))   ;

        Vector2	pauseUniRelDragVel	= pauseZone.GetReleasedUniDragVel();
        Vector2 pauseUniRelDragVec	= pauseZone.GetReleasedUniDragVec();
      }

    }
  }

}
