using UnityEngine        ;
using System.Collections ;

public class mt_DistanceFromSpawned : MonoBehaviour { //put me on same transform as animator object

  private float magDist = 0.0f;

  private Transform xform                   ;
  private Vector3   spawnPos = Vector3.zero ;
  private bool      bSpawned = false        ;

  void Awake(){
    xform    = transform      ;
  }

	void OnEnable(){
    spawnPos = xform.position ;
	}

  void Update(){
    if(bSpawned){
      magDist = (spawnPos - xform.position).magnitude + 3.5f;
      Debug.Log(" magDist : " + magDist);
    }
  }

  void OnBecameVisible () { //object must have mesh render
    bSpawned = true;
  }

  void OnBecameInvisible () {
    bSpawned = false;
  }

}
