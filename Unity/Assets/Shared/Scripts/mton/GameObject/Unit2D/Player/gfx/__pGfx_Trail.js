#pragma strict
@script RequireComponent(TrailRenderer)

class __pGfx_Trail extends __pUnit2D{ //paths to Unit2D

  protected var rendrTrail : TrailRenderer ;
  private   var rTime      : float = 0.5   ;      

  function Start () {
    super.Start()                            ;
    rendrTrail = GetComponent(TrailRenderer) ;
    rTime      = rendrTrail.time             ;
  }

  function Update () {
    super.Update();
    if(bStill){
      rendrTrail.time = rTime * 0.35;
    }
    else{
      rendrTrail.time = rTime;
    }
  }
}
