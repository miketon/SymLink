#pragma strict
public class __kPnt_Chain extends __gameObjectMT{

  public  var numChain : int = 1  ;
  private var __kPnts   : __kPnt_Spring[] ;

  function Start () {
    __kPnts = new __kPnt_Spring[numChain];
    for(var i=0; i<__kPnts.Length; i++){
      var go : GameObject = Instantiate(Resources.Load("UI/kPnt")) as GameObject;
      __kPnts[i] = go.GetComponent(__kPnt_Spring) ; 
      __kPnts[i].Set_friction(0.95)               ;
      if(i==0){
        __kPnts[i].Set_xformT(xform)       ;
      }
      else{
        __kPnts[i].Set_xformT(__kPnts[i-1].transform);
      }
    }
  }

  function Update () {

  }

}
