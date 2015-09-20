using UnityEngine        ;
using System             ; //NOTE : ??? must import to use anonymous function ; And the IComparable Interface for Dictionary
using System.Collections ;

//It is common to create a class to contain all of your
//extension methods. This class must be static.
public static class __gEXTENSIONS {

	// Collider : Adding GetComponent functionality
	public static T GetComponentEX<T>(this Collider self){// , Func<T, true> OnValid){
		return self.gameObject.GetComponent<T>();
	}

	public static Transform Emit<T>(this Transform self, Transform IN_XFORM, Vector3 IN_POS, Quaternion IN_ROT, Func<T> funcToRun){
		Transform retXform = IN_XFORM.lpSpawn(IN_POS, IN_ROT);
		funcToRun();
		return retXform;
	}

	public static Quaternion doRotateTowards(this Quaternion self, Vector3 IN_DIR){
		float angle = Mathf.Atan2(IN_DIR.y, IN_DIR.x) * Mathf.Rad2Deg;
		Quaternion rLook = Quaternion.AngleAxis(angle, Vector3.forward) * Quaternion.Euler(new Vector3(0.0f, 90.0f, 0.0f)); //offset to forward z
		return rLook;
	}

	public static Vector3 doRadiusPos(this Vector3 self, Vector3 IN_POS, float IN_RAD = 1.0f){
	  return IN_POS + (UnityEngine.Random.insideUnitSphere * IN_RAD);
    }

	public static Vector3 MoveOrtho(this Transform self, Vector3 IN_VEC3){
		int max = -1;
		int len =  2;
		for(var i=0; i<=len; i++){
			if(Mathf.Abs(IN_VEC3[i]) > Mathf.Abs(IN_VEC3[(i+1)%(len+1)])){
				max = i;
			}
//		    Debug.Log("MoveOrtho : " + IN_VEC3[i] + " i " + i + " : " + (i+1)%(len+1));
		}
//		Debug.Log("MoveOrtho : MAX : " + max);
		if(max==0){
			if(IN_VEC3[max] < 0){ //move left
				return Vector3.left ;
			}
			else{ //move right
				return Vector3.right ;
			}
		}
		else if(max==1){
			if(IN_VEC3[max] < 0){ //move down
				return Vector3.down;
			}
			else{ //move up
				return Vector3.up;
			}
		}
		else{
			if(IN_VEC3[max] < 0){ //move backwards
				return Vector3.back;
			}
			else{ //move forward
				return Vector3.forward;
			}
		}
	}

//	
//	public static bool OnGround(this CharacterController self, Vector3 vDir, Vector3 vCol){                // vCol: x = cRadius, y = cHeight                             
////	  this.bStunnd = false;
//      float bCentCheck = this.dirRayCheck(vDir, vCol.y,  0.0f) ; //check center
//      float bLeftCheck = this.dirRayCheck(vDir, vCol.y,  vCol.x * 0.8f) ; //check right edge
//      float bRghtCheck = this.dirRayCheck(vDir, vCol.y, -vCol.x * 0.8f) ; //check left edge
//	  int countCheck = 0;
//	  if(bCentCheck > 0.0f){
//	    countCheck=countCheck+2; //center counts more
//	  }
//	  if(bLeftCheck > 0.0f){
//	    countCheck++;
//	  }
//	  if(bRghtCheck > 0.0f){
//	    countCheck++;
//	  }
////      if (bLeftCheck>0.0f || bRghtCheck>0.0f || bCentCheck>0.0f){                                //either edge connects, then character is onGround
//      if (countCheck>0){                                //either edge connects, then character is onGround
//		if(countCheck<2){ //Not all rays hitting ground; reduce radius of collider
//		  contrl.radius = vCol.x * 0.05f ; //reduce radius collider
//		}
//		else{
//		  contrl.radius = vCol.x         ; //else leave at default
//		}
//        return true;
//      }
//      else{
//        return false;
//      }
//    }

}
