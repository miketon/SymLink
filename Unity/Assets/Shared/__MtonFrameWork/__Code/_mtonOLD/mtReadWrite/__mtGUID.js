#pragma strict

class __mtGUID extends MonoBehaviour{

  static var __goCell : GameObject[] ; // gameObject cells
  static var __lights : Light[]      ;
  
  private var guid_mt : int;

  function Start () {
    //print(this + "__mt_GUID starting.");
    var thisGUID : int = this.GetInstanceID();
    setGuid(thisGUID);
  }
  
  function getGuid():int{
    return guid_mt;
  }
  
  function setGuid(IN_guid:int){
    guid_mt = IN_guid; 
  }

}