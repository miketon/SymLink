#pragma strict
class mt_Car_Tank_UI extends mt_Car_Tank{

  public var timeScale:float = 1.0;

  function Awake(){
    super.Awake();
  }

  function Start () {
    super.Start();
  }

  function Update () {
    if(queryUserInput){
      if (Input.GetKey (KeyCode.T)){
        mton_GLOBAL.uiTimeBool = true      ;
        Time.timeScale         = timeScale ;
      }
      else{
        mton_GLOBAL.uiTimeBool = false ;
        Time.timeScale         = 1.0   ;
      }
      super.Update();
    }
  }

  function FixedUpdate () {
    if(queryUserInput){
      super.FixedUpdate();
    }
  }

  function OnGUI(){
    if(Input.GetKey (KeyCode.L)){ //Death Debug.  Remove me.
      var closestEnemy = FindClosestEnemy();
      if(closestEnemy!=null){
        labelAtXform("I am closest to : "+this, closestEnemy.transform);
      }
    }
  }

  // Find the name of the closest enemy
  function FindClosestEnemy () : GameObject {
    // Find all game objects with tag Enemy
    var gos     : GameObject[] = GameObject.FindGameObjectsWithTag("Enemy") ;
    var closest : GameObject   = null                                       ;

    if(gos!=null){
      var distance = Mathf.Infinity     ;
      var position = transform.position ;
      // Iterate through them and find the closest one
      for (var go : GameObject in gos)  { 
        var diff        = (go.transform.position - position) ;
        var curDistance = diff.sqrMagnitude                  ;
        if (curDistance < distance) { 
          closest  = go          ;
          distance = curDistance ;
        } 
      } 

      return closest;
    }    
  }

}
