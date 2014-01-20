#pragma strict

public class mt_Attack extends __gameObjectMT{

  enum enType{ //enumerates the possible attack
    idle,
    mlee, //melee
    dist, //distance, range
    uppr,
    dwnr,
    powr, //power
    spcl, //special
    time  //time freeze
  }
  
  enum enStnd{ //stance during attack
    idle,
    uppr,
    dwnr,
    dash,
    jump,
    duck,
    spcl
  }
  
  enum enElem{ //attack element
    idle,
    fire,
    watr,
    erth,
    wind,
    frez,
    psyc,
    spcl
  }

  public var amount : int = 1 ;
  public var type   : enType  ; 
  public var stnd   : enStnd  ;
  public var elem   : enElem  ;
  
  public  var vel     : Vector3 = Vector3.zero;
  private var prevPos : Vector3 = Vector3.zero;
  
  protected var attkDur : float = 0.1     ;
  
  function Start  () {
    prevPos = xform.position ;  //HACK: to prevent 1st delta from being massive
  }
  function Update () {
    vel = (xform.position - prevPos)/Time.deltaTime ; //velocity = distance between current and previous position divided by time
    prevPos = xform.position ;
  }

}