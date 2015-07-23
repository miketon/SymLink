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

}
