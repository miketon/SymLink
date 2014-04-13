#pragma strict

class __p_uXforms_User extends __p_uXforms{   //object filtering componenet, searches for object entities to update

  private var cLayerFrcObject : int    ; //"Force Object" env objects eligible for lift, push, swap
  private var cLayerPntObject : int    ; //"Grab  Object" env objects eligible for grapple/pull
  
  public  var __kPnt_go       : GameObject            ;
  private var __kPnt_UI       : __kPnt_Spring_mTarget ;
  
  private var __kPntDEF       : Transform[]           ; //HACK: stores player pos

  function Awake(){
    super.Awake()                                          ;
    cLayerFrcObject = LayerMask.NameToLayer("forceObject") ;
    cLayerPntObject = LayerMask.NameToLayer("pointObject") ;
  }
  
  function Start(){
    super.Start();
    
    //setup Spring Pet
    if(!__kPnt_go){
      __kPnt_go = Instantiate(Resources.Load("UI/kPnt_Spring_mTarget")) as GameObject ; //loading default object
    }
    else{
      __kPnt_go = Instantiate(__kPnt_go) as GameObject;
    }
    __kPnt_UI = __kPnt_go.GetComponent(__kPnt_Spring_mTarget) ; 
    __kPnt_UI.Set_xformT(xform);
    
    __kPntDEF = new Transform[1]; //HACK: stores player pos
    __kPntDEF[0] = xform;
  }

  function LateUpdate(){ 
    super.LateUpdate() ;
    uXforms = null     ;
    
    if(_io_.bStill){  //seek force objects
      uXforms = radiusGETxforms(1<<cLayerFrcObject) ; //WTF is << ? Need that to specify inclusive vs. exclusive
    }
    else{             //seek point objects
      uXforms = radiusGETxforms(1<<cLayerPntObject) ; 
    }
    
    if(uXforms){
      uXforms = xformsByDistanceSort(uXforms);
      __kPnt_UI.Set_xformTs(uXforms);
    }
    else{
      __kPnt_UI.Set_xformTs(__kPntDEF);
    }
    
    uFirstB = _io_.Get_uFirstB();
  }
  
}
