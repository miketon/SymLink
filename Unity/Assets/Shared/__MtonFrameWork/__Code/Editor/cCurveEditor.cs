using System.Collections;
using UnityEngine;
using UnityEditor;
using MTON.Class;

namespace MTON{

  [CustomEditor(typeof(cCurve))]
  public class cCurveEditor : Editor{
    void OnEnable(){
	  Debug.Log ("EDITOR : "  + this);
	}

	public override void OnInspectorGUI (){
	  base.OnInspectorGUI ();
	  cCurve mCurve = (cCurve)target; //target is keyword used by Editor object ???
	  EditorGUILayout.LabelField("THIS THE EDITOR TAKING OVER.");
	  if(GUILayout.Button("Build Object")){
//	    Debug.Log ("ON DOWN PRESS EDITOR");
	    EditorGUILayout.HelpBox("This is a help box", MessageType.Info);
	  }
	  else{
//	    Debug.Log ("ON RELEASE EDITOR");
	    EditorGUILayout.HelpBox("This is not a help box", MessageType.Info);
	  }
	}
  }

}