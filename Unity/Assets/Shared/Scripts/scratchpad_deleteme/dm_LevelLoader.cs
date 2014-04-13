using UnityEngine;
using System.Collections;

public class dm_LevelLoader : MonoBehaviour {

	private const string[] LEVEL_NAMES_TRUTH = null ;
	private static int level_Cnt = 2;
	private static int level_Cur = 0;
	public string[] LEVEL_NAMES = {"MenuScene", "Level_One", "Level_Two...etc"} ;
	// Use this for initialization
	void Start () {
		DontDestroyOnLoad (transform.gameObject);
		level_Cur = 0;
		level_Cnt = 3;
	}
	
	// Update is called once per frame
	void Update () {
		if(Input.GetKeyUp(KeyCode.N)){
			Debug.Log("Level name : " + LEVEL_NAMES[level_Cur] + level_Cur + " : "+ level_Cnt);
			Application.LoadLevel(LEVEL_NAMES[level_Cur]);
			level_Cur = (level_Cur+1)%level_Cnt;
		}	
		if(CFInput.GetKeyUp(KeyCode.Escape)){
			Application.LoadLevel(LEVEL_NAMES[0]); //boot back to menu
		}
	}
}
