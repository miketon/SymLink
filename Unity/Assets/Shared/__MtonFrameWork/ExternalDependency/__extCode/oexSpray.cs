using UnityEngine;
using System.Collections;
using Kvant;

public class oexSpray : MonoBehaviour {

	public Spray pRest ; //rest properties
	public Spray pActv ; //active properties

	// Update is called once per frame
	void Update () {
	  if(Input.GetKeyDown(KeyCode.P)){
	    pRest.gameObject.SetActive(false);
	    pActv.gameObject.SetActive(true);
	  }
	  else if(Input.GetKeyUp(KeyCode.P)){
		pRest.gameObject.SetActive(true);
	    pActv.gameObject.SetActive(false);
	  }
	}
}
