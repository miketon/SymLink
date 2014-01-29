#pragma strict

class mtGrid_LevelParser_Tex2D extends mtGrid_LevelParser{

  public  var LevelData : Texture2D[]; //UseTexture2D: HACK! DXT1 compression result in whacked reads!
  //HACK! Override compression or set to GUI type and 16bit/truecolor
  private var imgWdth : int;
  private var imgHght : int;

  function ReadLevelData(LevelData:Texture2D){

    //print("REading in data from texture : " + LevelData+LevelData.width+LevelData.height);

    imgWdth    = LevelData.width  ;
    imgHght    = LevelData.height ;
    gridWidth  = imgWdth          ;
    gridHeight = imgHght          ;

    //SetGridRange(Vector3(0,-imgHght,0), Vector3(imgWdth,0,0)); //Top Left corner
    if(gPlane == GFGrid.GridPlane.XZ){ //set for topdown
      SetGridRange(Vector3(0,0,0), Vector3(imgWdth,0, imgHght)); //Bottom Right corner
    }
    else if(gPlane == GFGrid.GridPlane.XY){ //set for sidescroll
      SetGridRange(Vector3(0,0,0), Vector3(imgWdth,imgHght,0)); //Bottom Right corner 
    }
    //for(var h:int=imgHght-1; h>=0; h--){ //starts at bottom left
    for(var h:int=0; h<imgHght; h++){ //starts at bottom left
      for(var w:int=0; w<imgWdth; w++){
        var pixel:Color = LevelData.GetPixel(w,h);
        //print("Pixel : "+pixel+" w: "+w+" h:"+h);
        //var targetPosition:Vector3 = GRID_mt.GridToWorld(Vector3(w+gOffSet, (-(imgHght-1)+h-gOffSet)+imgHght, 0.0)) ;
        var targetPosition:Vector3 = GRID_mt.GridToWorld(Vector3(w+gOffSet, 0.0, (-(imgHght-1)+h-gOffSet)+imgHght)) ;
        //print("Position : "+targetPosition+" w: "+(w+gOffSet)+" h:"+(-h-gOffSet)+pixel);
        if(pixel == Color.red){
          CreateBlock("R", targetPosition) ;
        }
        else if(pixel == Color.green){
          CreateBlock("G", targetPosition) ;
        }
        else if(pixel == Color.blue){
          CreateBlock("B", targetPosition) ;
        }
        else{
          CreateBlock(null, targetPosition) ;
        }
      }
    }
  }

  function doTileLevel(){
    super.doTileLevel();
    if(LevelData.Length > 0){
      ReadLevelData(LevelData[cLevel])     ;
      cLevel = (cLevel+1)%LevelData.Length ;
    }
    else{
      Debug.LogError("doTileLevel() Failed : Load LevelData : " + this+LevelData);
    }
  }

}
