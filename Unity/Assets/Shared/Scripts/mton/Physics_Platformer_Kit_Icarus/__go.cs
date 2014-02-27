using UnityEngine;

public class __go : MonoBehaviour {

  protected Transform xform ;

  protected virtual void Awake(){
		doAwake();
  }

	protected virtual void doAwake(){
    xform = transform; //caching component lookup: transform == GetComponent(transform)
	}

}
