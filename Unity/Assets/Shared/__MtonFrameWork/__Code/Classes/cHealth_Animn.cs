using UnityEngine        ;
using System.Collections ;
using MTON.Interface     ;
using MTON.Class         ;
using MTON.Global        ;

namespace MTON.Class{

  public class cHealth_Animn  : cHealth {

    public cAnimn an;

	public override void Start(){
	  base.Start();
	  if(an == null){
	    an = this.GetComponent<cAnimn>();
	  }
	  if(an != null){
		this.Init ();
	  }
	}

	public void OnEnable(){

	}

	public void OnDisable(){

	}

	private void Init(){

	}
  
  }

}
