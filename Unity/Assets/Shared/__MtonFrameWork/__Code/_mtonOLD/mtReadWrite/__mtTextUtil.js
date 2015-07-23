#pragma strict
import System.IO;
import System.Collections.Generic;

class __mtTextUtil extends MonoBehaviour{

  private var reader   :StringReader = null ; //need to import System.IO  StringReader is a Dot.net object                                        
  public  var fileData : TextAsset[]        ; //Use raw .txt files in project: Get their contents through this class.

function Start () {

}

function Update () {

}


  function ReadLevelData(IN_textasset:TextAsset){
    reader          = new StringReader(IN_textasset.text)   ;
    var line:String = reader.ReadLine()                ;
    var row :int    = 0                                ;

    while(line != null){
      print("Reader : Line : "+line );
      row  = row + 1           ;
      line = reader.ReadLine() ;
    }
  }
  
}