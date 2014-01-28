#pragma strict

var rotateAmount : float;

function RandomRotateObj(range_IN:float){
  rotateAmount = Random.Range(-range_IN, range_IN);
  print("RandomRotateObj : "+  this + " : " + rotateAmount);
  
  transform.rotation = Quaternion.Euler(0, rotateAmount, 0);
}

function ApplyForce(force_IN:float){
  rigidbody.AddForce(0.0, force_IN, 0.0);
}