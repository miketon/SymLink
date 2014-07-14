using UnityEngine;
using System.Collections;

public class PlayerMove_mton_IO : PlayerMove_mton{
  //setup
  public int  bInput = 1     ; //will accept controller input? 0 == no ; 1 == gamepad ; 2 == touch
  public bool sidescroller   ; //if true, won't apply vertical input
  public GameObject go_Right ;
  public GameObject go_Left  ;

  //io values
  protected float __h = 0.0f;
  protected float __v = 0.0f;

	public void set_H(float float_IN){
		__h = float_IN;
	}
	public void set_V(float float_IN){
		__v = float_IN;
	}

  public void doAttack(){
    bAttack = true ;
    if(!bFlip){
      go_Right.SetActive (true) ;
      go_Left.SetActive (false) ;
    }
    else{
      go_Right.SetActive (false) ;
      go_Left.SetActive (true)   ;
    }
  }
  public void doJump(){
    bJump = true ;
  }
  public void clearBoolState(){
    bAttack = false;
    bJump   = false;
  }
  //push player at jump force
  public override void Jump(Vector3 jumpVelocity){
    Debug.Log("I am jumping.") ;
    base.Jump(jumpVelocity)    ;
    //gridForce()              ;
  }

  public override void doUpdate(){
    base.doUpdate()               ;
    doInput()                     ;
	//only apply vertical input to movemement, if player is not sidescroller
    if(!sidescroller){
      direction = (screenMovementForward * __v) + (screenMovementRight * __h);
    }
    else{
      direction = Vector3.right * __h;
    }
    //gridForce()                 ;
  }

  public virtual void doInput(){
    if(bInput==1){	
      io_Controller();
    }

    if(Input.GetKeyUp(KeyCode.P)){
      print("P is for power") ;
      movingObjSpeed.y = 5    ;
    }
  }

  public virtual void io_Controller(){
    //get movement input, set direction to move in
    __h = Input.GetAxisRaw ("Horizontal") ;
    __v = Input.GetAxisRaw ("Vertical")   ;


    if(Input.GetButtonDown ("Jump")){
      bJump = true;
    }
    else{
      bJump = false;
    }
    if(Input.GetButtonDown ("Fire1")){
      print("I am attacking") ;
      bAttack = true          ;
    }
    else{
      bAttack = false;
    }
  }

  /*
     public VectorGrid m_VectorGrid;
     public float m_ExplosiveForce = 1.0f;
     public float m_ImplosiveForce = 1.0f;
     public float m_ForceRadius = 1.0f;


  // Update is called once per frame
  void gridForce () {

  bool modifierPressed = Input.GetKey(KeyCode.LeftCommand);
  Color color = new Color(255.0f, 255.0f, 255.0f, 1.0f);

//print("Grid Force!");
if(Input.mousePosition.x > 250){
if(Input.GetMouseButton(0) && !modifierPressed){
Ray screenRay = Camera.main.ScreenPointToRay(Input.mousePosition);
Vector3 worldPosition = screenRay.GetPoint(m_VectorGrid.transform.position.z - Camera.main.transform.position.z);
worldPosition.z = m_VectorGrid.transform.position.z;
m_VectorGrid.AddGridForce(worldPosition, m_ExplosiveForce * 0.1f, m_ForceRadius, color, true);
}
else if(Input.GetMouseButton(1) || (Input.GetMouseButton(0) && modifierPressed)){
Ray screenRay = Camera.main.ScreenPointToRay(Input.mousePosition);
Vector3 worldPosition = screenRay.GetPoint(m_VectorGrid.transform.position.z - Camera.main.transform.position.z);
worldPosition.z = m_VectorGrid.transform.position.z;
m_VectorGrid.AddGridForce(worldPosition, -m_ImplosiveForce * 0.1f, m_ForceRadius, color, true);
}
}
}
*/
}
