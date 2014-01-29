#pragma strict

class mt_EmitObject_Melee extends mt_EmitObject{ //short range attack

  function io_Fire(){
    if(Input.GetButtonDown("Fire1")){
      Fire();
    }
  }
  
}