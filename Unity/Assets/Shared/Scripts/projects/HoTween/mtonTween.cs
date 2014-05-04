using Holoville.HOTween  ;
using UnityEngine        ;
using System.Collections ;

public class mtonTween : MonoBehaviour {

  public string[] pToTween ;
  public LoopType looType  ;
  public EaseType easType  ;

  public TextMesh label         ;
  public Vector3  posTween      ;
  public float tweenDur  = 3.0f ;
  public bool isRelative = true ;

  private Transform xform;

  // Use this for initialization
  void Start () {
    xform = transform                ;
    HOTween.Init(true, true, true)   ; //optional : HOTween will be initialized automatically when you create your first tween - using default values)
    HOTween.EnableOverwriteManager() ; //HOTween's OverwriteManager works in the background, and checks if a running tween needs to be overwritten by a newly started one. It's awesome and you should use it :)

    //fast write
    //HOTween.To(xform, 4, "position", new Vector3(0, 3, 0)); 
    //creating TweenParms first, then assigning it to HOTween. 
    TweenParms tweenParms = new TweenParms().Prop("localPosition", posTween, isRelative).Ease(easType).Loops(2, looType).OnStepComplete(OnTweenComplete);
    //HOTween.To will return a Tweener. You can either store it for direct use (or to add it to a Sequence), or 
    //you can ignore it and just let it run. Unless you expressly choose otherwise, once an animation is complete 
    //the Tweener will be destroyed.
    Tweener myTween = HOTween.To(xform, tweenDur, tweenParms); 
  }

  void OnTweenComplete(){
    Debug.Log("HOTween: mtonTween Completed ") ;
    label.text = "I am done"                   ;
  }

  /*
  public string SampleString = "Bear Hands!" ;
  public float  SampleFloat  = 13511.0f      ;

  void OnGUI(){
    // Here we show the sample string and float being tweened
    GUILayout.Label("String tween: " + SampleString) ;
    GUILayout.Label("Float tween: " + SampleFloat)   ;
  }
  */
}
