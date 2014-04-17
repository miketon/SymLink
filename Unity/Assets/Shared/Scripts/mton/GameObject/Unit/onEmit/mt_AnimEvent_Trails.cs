using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[RequireComponent(typeof(mt_AnimIntervalControl))]
public class mt_AnimEvent_Trails : mt_AnimEvent { //put me on same transform as animator object

  public List<mt_WeaponTrail> trails ;
  public float timeToTweenTo = 1.0f  ;
  public float fadeInTime    = 1.0f  ;
  public float fadeOutTime   = 1.0f  ;

  private bool bSwipe = false;

  void TrailStart(int indexT){
    trails[indexT].StartTrail(timeToTweenTo, fadeInTime)   ; // Starts trail
		Debug.Log("TrailStart");
  }

  void TrailFadeOut(int indexT){
    trails[indexT].FadeOut(fadeOutTime) ; // Fades the trail out
		Debug.Log("FadeOut");
  }

  void TrailClear(int indexT){
    trails[indexT].ClearTrail() ; // Forces the trail to clear
  }

  protected mt_AnimIntervalControl animationController ;
  protected float t         = 0.033f                   ;
  protected float timeScale = 1                        ; // This is here for personal time distortion... like freeze spells that slow enemies... (changing this affects the animation rate)
 
  protected void Awake (){
    animationController = GetComponent<mt_AnimIntervalControl> ();
  }

  protected void Start (){
	animationController.AddTrail (trails[0]) ; // Adds the trails to the animationController which will run them
		TrailClear(0) ; // Forces the trail to clear
    //Initialise ()                            ;
  }

  protected void Update (){
    t = Mathf.Clamp (Time.deltaTime * timeScale, 0, 0.066f);
    animationController.SetDeltaTime (t); // Sets the delta time that the animationController uses. ??? HACK : Disable still works
  }

}
