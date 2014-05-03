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

public class TouchStick_mton : MonoBehaviour{

  // ----------------------
  // Controller Variable 
  // ----------------------

  public  TouchController	 ctrl    ;
  public  PlayerMove_mton_IO mton  ;
  public  GUIElement buttona_A_GUI ;
  public  GUIElement buttona_B_GUI ;
  public  GUIElement buttona_C_GUI ;
  public  GUIElement buttona_D_GUI ;

  public  float timeModalTapDelta = 0.25f ; //delta between when io is read as tap vs. press
  public  float buttonScale       = 0.1f  ;
  public  float buttonOffSet      = 1.75f ;
  private float timeLastPressed   = 0.0f  ;

  private Vector2 screenRes      = new Vector2(0.0f, 0.0f) ;
  private float   screenAspRatio = 0.0f                    ; //screen aspect ratio; used to scale GUIElements to be proportional
  private float   cRadius        = 0.0f                    ; //controller radius
  private bool 	  button_A_Show  = false                   ;

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
      screenRes.x               = Screen.width                      ;
      screenRes.y               = Screen.height                     ;
      screenAspRatio            = screenRes.x/screenRes.y           ;
      cRadius                   = stick_attackStick.GetScreenRad () ; ///screenRes.y ;

      buttona_A_GUI.transform.localScale = new Vector3(buttonScale, buttonScale * screenAspRatio, buttonScale) ; //scale adjust to screen ratio
      buttona_A_GUI.enabled              = false                                                               ;
      buttona_B_GUI.transform.localScale = new Vector3(buttonScale, buttonScale * screenAspRatio, buttonScale) ; //scale adjust to screen ratio
      buttona_B_GUI.enabled              = false                                                               ;
      buttona_C_GUI.transform.localScale = new Vector3(buttonScale, buttonScale * screenAspRatio, buttonScale) ; //scale adjust to screen ratio
      buttona_C_GUI.enabled              = false                                                               ;
      buttona_D_GUI.transform.localScale = new Vector3(buttonScale, buttonScale * screenAspRatio, buttonScale) ; //scale adjust to screen ratio
      buttona_D_GUI.enabled              = false                                                               ;
    }
  }

  void doModalButton(GUIElement goGUI, int indexE){

    Vector2 pStick           = stick_attackStick.GetScreenPos()                                                              ;
    //Vector3 p              = Camera.main.ScreenToWorldPoint(new Vector3(pStick.x, screenRes.y-pStick.y, 5.0f))             ; //matching go to cam projection ; 5.0f is a guess.
    Vector2 screenPosNorm    = new Vector2(pStick.x/screenRes.x, 1.0f-pStick.y/screenRes.y)                                  ;
    Vector3 radialPos        = indexToRadialPosition(indexE, 4)                                                              ;
    //Vector3 p              = new Vector3(screenPosNorm.x+cRadius/screenRes.x* buttonOffSet * goPos, screenPosNorm.y, 0.0f) ;
    Vector3 p                = new Vector3(radialPos.x + screenPosNorm.x, radialPos.y + screenPosNorm.y, 1.0f)               ;
    goGUI.transform.position = p                                                                                             ;
    goGUI.enabled            = true                                                                                          ;
  }

  Vector3 indexToRadialPosition(int indexE, int indexMax){
    float angle = 2 * Mathf.PI / indexMax * indexE                     ; //indexEtry == 0 == right ; counterclockwise rotation
    float x_i   = cRadius/screenRes.x* buttonOffSet * Mathf.Cos(angle) ;
    float y_i   = cRadius/screenRes.y* buttonOffSet * Mathf.Sin(angle) ;
    return new Vector3(x_i, y_i, 0.0f)                                 ;
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
        timeLastPressed = Time.time                 ;
        Debug.Log ("MTON JUMP Justpressed:" + this) ;
      }
      else if (stick_attackStick.Pressed()){
        // Your code here.
        stick_attackDir = stick_attackStick.GetFourWayDir() ; //get digital fourway
        if(stick_attackDir == TouchStick.StickDir.NEUTRAL){
          buttona_A_GUI.enabled = false;
          buttona_B_GUI.enabled = false;
          buttona_C_GUI.enabled = false;
          buttona_D_GUI.enabled = false;
          /* Updating TouchZone Button
             Rect rectTrue = stick_attackStick.GetRect(true)                                 ;
             Rect rectFals = stick_attackStick.GetRect(false)                                ;
             Debug.Log ("TRUE :" + rectTrue.x + "FALSE : " + rectFals.x)                     ;
             this.ctrl.GetZone(ZONE_PAUSE).SetRect(new Rect(rectFals.x, rectFals.y, -32,64)) ;
             */
        }

        else if(stick_attackDir == TouchStick.StickDir.R){  
          doModalButton(buttona_A_GUI, 0) ; //0 index == right ; counterclockwise rotation
          buttona_B_GUI.enabled = false   ;
          buttona_C_GUI.enabled = false   ;
          buttona_D_GUI.enabled = false   ;
          mton.bFlip = true               ; //facing right
          mton.doAttack()                 ;
        }
        else if(stick_attackDir == TouchStick.StickDir.U){
          doModalButton(buttona_C_GUI, 1) ;
          buttona_A_GUI.enabled = false   ;
          buttona_B_GUI.enabled = false   ;
          buttona_D_GUI.enabled = false   ;
          //mton.doAttack()               ;
        }
        else if(stick_attackDir == TouchStick.StickDir.L){
          doModalButton(buttona_B_GUI, 2) ;
          buttona_A_GUI.enabled = false   ;
          buttona_C_GUI.enabled = false   ;
          buttona_D_GUI.enabled = false   ;
          mton.bFlip = false              ; //facing left
          mton.doAttack()                 ;
        }
        else if(stick_attackDir == TouchStick.StickDir.D){
          doModalButton(buttona_D_GUI, 3) ;
          buttona_A_GUI.enabled = false   ;
          buttona_B_GUI.enabled = false   ;
          buttona_C_GUI.enabled = false   ;
        }
      }
      else if(stick_attackStick.JustReleased()){
        float timeSincePressed = Time.time - timeLastPressed;
        if((Time.time - timeLastPressed) < timeModalTapDelta){
          mton.doJump();
        }

        Debug.Log ("MTON JUMP RELEASE:" + this + " TimeSincePressed :" + timeSincePressed + " Time : " + Time.time) ;
        buttona_A_GUI.enabled = false                                                                               ;
        buttona_B_GUI.enabled = false                                                                               ;
        buttona_C_GUI.enabled = false                                                                               ;
        buttona_D_GUI.enabled = false                                                                               ;
      }
      else{
        mton.clearBoolState();
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
