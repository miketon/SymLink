using UnityEngine        ;
using System.Collections ;
using MTON.Class         ;

namespace MTON.codeObjects{

  public class oEquip : MonoBehaviour{

    public cEquip e;
	public cInput i;

	private void Awake(){
		Debug.Log("I'm waking.");
		i = this.gameObject.AddComponent<cInput>();
		e = this.gameObject.AddComponent<cEquip>();
	}
	private void Start(){
	  Debug.Log("I'm starting.");
	}

	private void Update(){
		if(Input.GetKeyDown(KeyCode.Space)){
			Debug.Log("Space");
			e.OnEquip();
			i.bJump = true;
		}
		else if(Input.GetKeyUp(KeyCode.Space)){
			i.bJump = false;
		}
	}

  }

}
