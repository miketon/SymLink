using UnityEngine;
using System.Collections;

namespace MTON.Class{

  public class cSight : MonoBehaviour {

    private static Vector3 lastPlayerSighting;  // Reference to last global sighting of the player.

    public  float   FOVangle = 110f  ;          // Number of degrees, centred on forward, for the enemy see.
    public  bool    bSight           ;          // Whether or not the player is currently sighted.
    public  Vector3 thisLastSighting ;          // Last place this enemy spotted the player.
    private Vector3 previousSighting ;          // Where the player was sighted last frame.

	public bool doViewConeCheck(Transform XFORM_TARGET){
	  return this.doViewConeCheck(XFORM_TARGET, FOVangle);
	}

	public bool doViewConeCheck(Transform XFORM_TARGET,float IN_FOV) {
      // By default the player is not in sight.
      bool playerInSight = false ;
            
      // Create a vector from the enemy to the player and store the angle between it and forward.
      Vector3 direction = XFORM_TARGET.position - transform.position  ;
      float   angle     = Vector3.Angle(direction, transform.forward) ;
//      Debug.DrawLine(this.transform.position, XFORM_TARGET.position, Color.yellow, 0.1f, false) ;
		Debug.DrawLine(this.transform.position, this.transform.position + this.degreeToPos(angle), Color.red, 0.1f, false) ;
       
      // If the angle between forward and where the player is, is less than half the angle of view...
	  if(angle < IN_FOV * 0.5f){
        // ... the player is in sight.
        playerInSight = true;
        // Set the last global sighting is the players current position.
        lastPlayerSighting = XFORM_TARGET.transform.position;
      }
	  return playerInSight;
	}

	public Vector3 degreeToPos(float IN_Angle){
	  float radians = IN_Angle * Mathf.Deg2Rad;
      float x = Mathf.Cos(radians);
      float y = Mathf.Sin(radians);
      Vector3 retPos = new Vector3(x, y, 0); //Vector2 is fine, if you're in 2D
	  return retPos;
	}

  }

}
