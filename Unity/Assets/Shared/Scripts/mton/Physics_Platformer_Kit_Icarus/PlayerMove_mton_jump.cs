using UnityEngine;
using System.Collections;

public class PlayerMove_mton_jump : PlayerMove_mton{

	//push player at jump force
	public override void Jump(Vector3 jumpVelocity){
	    print("I am jumping.");
		base.Jump(jumpVelocity);
		//gridForce();
	}
	
	public override void doUpdate(){
	  base.doUpdate();
	  //print("doUpdate Plus ++++");
	  //gridForce();
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