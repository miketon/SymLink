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
    trails[indexT].StartTrail(timeToTweenTo, fadeInTime) ; // Starts trail
    //Debug.Log("TrailStart")                              ;
  }

  void TrailFadeOut(int indexT){
    trails[indexT].FadeOut(fadeOutTime) ; // Fades the trail out
    //Debug.Log("FadeOut")                ;
  }

  void TrailClear(int indexT){
    trails[indexT].ClearTrail() ; // Forces the trail to clear
    //Debug.Log("TrailClear")     ;
  }

  //HACK : *** //
  void TrailSetTime(int indexT){ //Used to determine train display; if fadeInTime <= 0.0f, trail automatically cleared
    trails[indexT].SetTime(fadeInTime, timeToTweenTo, fadeOutTime); //HACK : timeTransitionSpeed replaced by fadeOutTime ?? Not sure what I'm doing here
  }

  public  MeshRenderer meshRenderer;
  private Material trailMaterial;

  void initMeshMaterial(){ //so we can change material values
    //meshRenderer = GetComponent(typeof(MeshRenderer)) as MeshRenderer;
    trailMaterial = meshRenderer.material;
  }

  void TrailSetColor(Color color){
    trailMaterial.SetColor("_TintColor", color);
  }
  //END HACK *** // 

  protected mt_AnimIntervalControl animationController ;
  protected float t         = 0.033f                   ;
  protected float timeScale = 1                        ; // This is here for personal time distortion... like freeze spells that slow enemies... (changing this affects the animation rate)

  protected void Awake (){
    animationController = GetComponent<mt_AnimIntervalControl> ();
    initMeshMaterial();
  }

  protected void Start (){
    animationController.AddTrail (trails[0]) ; // Adds the trails to the animationController which will run them
    TrailClear(0)                            ; // Forces the trail to clear
    //Initialise ()                          ;
  }

  protected void Update (){
    t = Mathf.Clamp (Time.deltaTime * timeScale, 0, 0.066f) ;
    animationController.SetDeltaTime (t)                    ; // Sets the delta time that the animationController uses. ??? HACK : Disable still works
  }

}
