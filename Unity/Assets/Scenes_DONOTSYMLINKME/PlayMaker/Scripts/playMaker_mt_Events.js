#pragma strict

var randNumFSM : PlayMakerFSM;

function Start () {
  randNumFSM = gameObject.Find("PlayMakerGUI").GetComponent.<PlayMakerFSM>();
}

function Update () {
  if(Input.GetKeyUp(KeyCode.R)){
    print("Random Number");
    randNumFSM.Fsm.Event("set_Number");
  }
}