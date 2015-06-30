using UnityEngine        ;
using System.Collections ;

///*HACK : Find a way to ifdef based on namepace
//
//using Holoville.HOTween  ;
//
//public class mtonTween : MonoBehaviour {
//
//  public string  pToTween  = "position"   ;
//  public Vector3 vec3Tween = Vector3.zero ;
//  public float tweenDur    = 1.0f         ;
//  public EaseType easType                 ;
//  public LoopType looType                 ;
//  public int  looNum     = -1             ;
//  public bool isRelative = true           ;
//
//  protected Transform xform;
//
//  // Use this for initialization
//  public virtual void Start () {
//    xform = transform                ;
//    HOTween.Init(true, true, true)   ; //optional : HOTween will be initialized automatically when you create your first tween - using default values)
//    HOTween.EnableOverwriteManager() ; //HOTween's OverwriteManager works in the background, and checks if a running tween needs to be overwritten by a newly started one. It's awesome and you should use it :)
//
//    //fast write
//    //HOTween.To(xform, 4, "position", new Vector3(0, 3, 0)); 
//    doTweenMton();
//  }
//
//  public virtual void doTweenMton(){
//    //creating TweenParms first, then assigning it to HOTween. 
//    TweenParms tweenParms = new TweenParms().Prop(pToTween, vec3Tween, isRelative).Ease(easType).Loops(looNum, looType).OnStepComplete(OnTweenComplete);
//    //HOTween.To will return a Tweener. You can either store it for direct use (or to add it to a Sequence), or 
//    //you can ignore it and just let it run. Unless you expressly choose otherwise, once an animation is complete 
//    //the Tweener will be destroyed.
//    Tweener myTween = HOTween.To(xform, tweenDur, tweenParms); 
//  }
//
//  public TextMesh label ;
//
//  public virtual void OnTweenComplete(){
//    Debug.Log("HOTween: mtonTween Completed ") ;
//    label.text = "I am done"                   ;
//  }

//*/

  /*
     public string SampleString = "Bear Hands!" ;
     public float  SampleFloat  = 13511.0f      ;

     void OnGUI(){
// Here we show the sample string and float being tweened
GUILayout.Label("String tween: " + SampleString) ;
GUILayout.Label("Float tween: " + SampleFloat)   ;
}
*/
//}
