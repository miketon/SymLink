#pragma strict

class mt_OnHit2D_Unit2D extends mt_OnHit2D{
  public var _u2_ : Unit2D ; //cache to get Unit2D to message on damage
  
  private var uText       : mt_UI_vText = new mt_UI_vText()      ;
  private var uTextOffSet : Vector3     = Vector3(0.0, 1.0, 0.0) ;
    
  function Awake(){
    super.Awake();
  }

  function Start(){
    super.Start()       ;
    if(!_u2_){
      _u2_ = pathToComponent(Unit2D) as Unit2D ;
    }
    
    uText.Init()                 ;
    uText.SetTarget(xform)       ;
    uText.SetOffSet(uTextOffSet) ;
  }

  function Update(){
    super.Update();
    if(Input.GetKeyDown(KeyCode.H)){
      _u2_.Set_hitB(true);
    }
    
    uText.SetTextMesh(health.ToString()) ;
    uText.Draw()                         ;
  }

  function applyForce(){
    super.applyForce()  ;                 
    _u2_.Set_hitB(true) ; //apply hit
  }

}

