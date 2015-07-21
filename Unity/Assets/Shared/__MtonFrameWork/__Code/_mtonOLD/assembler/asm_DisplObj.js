#pragma strict
//@script RequireComponent(tk2dSprite)
//@script RequireComponent(tk2dSpriteAnimator)

class asm_DisplObj extends __asmMT{ //map state to animation playback

function Awake(){
  print("DISPLAYOBJ : I am awake : " + this);
  //DefaultAddComponent(this.gameObject, tk2dSprite);
  //DefaultAddComponent(this.gameObject, tk2dSpriteAnimator);
}

function Start () {
  print("DISPLAYOBJ : I am starting : " + this);
}

function Update () {

}

}