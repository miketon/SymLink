#pragma strict

class mtColliderClickTest_RigidBody extends MonoBehaviour{

  function OnMouseUpAsButton(){
    Debug.Log("mtColliderClickTest: " + this + rigidbody.name);
  }

}