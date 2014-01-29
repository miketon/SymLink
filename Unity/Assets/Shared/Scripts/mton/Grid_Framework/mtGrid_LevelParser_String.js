#pragma strict
import System.IO;
import System.Collections.Generic;

class mtGrid_LevelParser_String extends mtGrid_LevelParser{

  private var reader:StringReader = null ; //need to import System.IO  StringReader is a Dot.net object                                        
  public  var LevelData : TextAsset[]; //Use raw .txt files in project: Get their contents through this class.

  function Awake(){
    super.Awake()  ;
  }

  function doTileLevel(){
    super.doTileLevel();
    if(LevelData[cLevel]){
      ReadLevelData(LevelData[cLevel])   ;
    }
    cLevel = (cLevel+1)%LevelData.Length ;
  }

  function ReadLevelData(LevelData:TextAsset){
    reader          = new StringReader(LevelData.text) ;
    var line:String = reader.ReadLine()                ;
    var row :int    = 0                                ;

    while(line != null){
      //print("Reader : Line : "+line );
      for(var i:int=0; i < line.Length; i++){
        var targetPosition:Vector3 = GRID_mt.GridToWorld(Vector3(i+0.5, -row-0.5, 0.0)) ;
        //CreateBlock(line[i], targetPosition)                                            ;
      }
      row  = row + 1           ;
      line = reader.ReadLine() ;
    }
  }

}
