using UnityEngine;
using System.Collections;

//It is common to create a class to contain all of your
//extension methods. This class must be static.
public static class __gEXTENSIONS {

	// Collider : Adding GetComponent functionality
	public static T GetComponentEX<T>(this Collider self){// , Func<T, true> OnValid){
		return self.gameObject.GetComponent<T>();
	}

}
