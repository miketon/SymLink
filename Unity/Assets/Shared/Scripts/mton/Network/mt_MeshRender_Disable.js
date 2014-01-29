#pragma strict

function Start () {
  // Disable the renderers in this game object and all its child game objects
  CountChildren(transform);
}

function CountChildren(transform_IN:Transform):int{
  var childCount:int = 0;
  for (var obj in transform_IN){ //find child object of transform
    //Debug.Log("Child: "+child);
    var child:Transform = obj as Transform;
    childCount ++;
    childCount += CountChildren(child);
    var crender:Renderer = child.renderer;
    if(crender){
      crender.enabled = false;
    }
  }
  return childCount;
}