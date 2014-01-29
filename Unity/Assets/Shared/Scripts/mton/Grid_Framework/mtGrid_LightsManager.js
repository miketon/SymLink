#pragma strict

import System.Collections.Generic;

class mtGrid_LightsManager extends __gameObjectMT_Grid{

  //declare a delegate to react when a switch is pressed. The delegate passes
  //as arguments the coordinates of the switch and which grid to use.
  static var switchEvents : List.<Function> = List.<Function> (); //event list
  
  static function OnHitSwitch(switchPos:Vector3){
    for(var func:Function in switchEvents){
      print("mtGrid_LightsManager -> Grid : " + GRID_mt);
      func(switchPos);
    }
  }
  
  static function SendSignal(switchPos:Vector3){
    OnHitSwitch(GRID_mt.WorldToGrid(switchPos));
  }

}