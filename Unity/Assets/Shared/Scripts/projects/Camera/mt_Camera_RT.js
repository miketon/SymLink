#pragma strict
#pragma implicit
#pragma downcast

@script ExecuteInEditMode
@script AddComponentMenu("Image Effects/mton_PIXL")
@script RequireComponent(Camera)

private var shaderCamera    : Camera;
private var shaderCamera_m  : Camera;
public  var replaceShader   : Shader;
public  var layerMaskString : String;

private var scaleResolution : float = 0.125;

function Update(){
  //Mode 7 like hack
  if(Input.GetKeyUp(KeyCode.P)){
    scaleResolution *= 2.0;
  }
  else if(Input.GetKeyUp(KeyCode.O)){
    scaleResolution *= 0.5;
  }
}

/*** HACK: Function can not be generalized...only operates on explicit RenderTexture :(  ***/
protected var renderTexture : RenderTexture;

function initRendTexture(){
  renderTexture            = RenderTexture.GetTemporary (camera.pixelWidth, camera.pixelHeight, 8) ; //Allocate a temporary render texture.
  renderTexture.filterMode = FilterMode.Point                                                      ;
}

function nullRendTexture():void{ //HACK: Function can not be generalized...only operates on explicit RenderTexture :(
  if (renderTexture != null) {
    RenderTexture.ReleaseTemporary (renderTexture) ;
    renderTexture = null                           ;
  }
}
/*** HACK: Function can not be generalized...only operates on explicit RenderTexture :(  ***/


/*** HACK: Function can not be generalized...only operates on explicit RenderTexture :(  ***/
protected var renderTexture_m : RenderTexture;

function initRendTexture_m(){
  renderTexture_m            = RenderTexture.GetTemporary (camera.pixelWidth * scaleResolution, camera.pixelHeight * scaleResolution, 8) ; //Allocate a temporary render texture.
  renderTexture_m.filterMode = FilterMode.Point                                                                                          ;
}

function nullRendTexture_m():void{ //HACK: Function can not be generalized...only operates on explicit RenderTexture :(
  if (renderTexture_m != null) {
    RenderTexture.ReleaseTemporary (renderTexture_m) ;
    renderTexture_m = null                           ;
  }
}
/*** HACK: Function can not be generalized...only operates on explicit RenderTexture :(  ***/

function OnDisable() {	
  DestroyImmediate (shaderCamera) ;
  nullRendTexture()               ;
  nullRendTexture_m()             ;
}

// --------------------------------------------------------

function Start() {
  // Disable if we don't support image effects
  camera.enabled = true;
  if (!SystemInfo.supportsImageEffects) {
    enabled = false ;
    return          ;
  }
  else{
    //camera.renderingPath = RenderingPath.VertexLit;
    //camera.renderingPath = RenderingPath.Forward;
    //camera.cullingMask = //Set to nothing
  }

}

// --------------------------------------------------------

function initShaderCam(shaderCamera : Camera, renderTexture : RenderTexture):Camera{

  if (!shaderCamera) {
    var tempObj:GameObject = new GameObject("ShaderCamera", Camera) ;
    tempObj.hideFlags      = HideFlags.HideAndDontSave              ;
    shaderCamera           = tempObj.camera                         ;
    //shaderCamera.depth   = camera.depth + 1                       ;
    shaderCamera.enabled   = false                                  ;
  }
  shaderCamera.CopyFrom (camera)                                    ;
  shaderCamera.targetTexture = renderTexture                        ;
  //shaderCamera.Render()                                           ; // ??? Do I need this on??? : No, if RenderWithShader(); else yes.

/*
//Generating DepthNormal Info
shaderCamera.depthTextureMode = DepthTextureMode.DepthNormals      ; //activate camera depth gen
var depthNormalShader : Shader = Shader.Find("Hidden/Camera-DepthNormalTexture");
shaderCamera.RenderWithShader (depthNormalShader,null); //if replacement tag == "", all objects in scene rendered with replacment shaders	
*/

  return shaderCamera;

}

function OnPreRender()
{
  if (!enabled || !gameObject.activeInHierarchy)
    return;

  nullRendTexture();
  initRendTexture();

  nullRendTexture_m();
  initRendTexture_m();

  shaderCamera             = initShaderCam(shaderCamera, renderTexture)     ;
  shaderCamera.cullingMask = ~(1<<(LayerMask.NameToLayer(layerMaskString))) ; //short cut : find layer by String : ~invert everything but that layer : pass bit to culling Mask
  shaderCamera.depth       = -2                                             ;
  shaderCamera.Render()                                                     ;

  shaderCamera_m                 = initShaderCam(shaderCamera_m, renderTexture_m) ;
  shaderCamera.depth             = -1                                             ;
  shaderCamera_m.backgroundColor = Color(0,0,0,0)                                 ;
  shaderCamera_m.clearFlags      = CameraClearFlags.SolidColor                    ;
  //shaderCamera_m.clearFlags    = CameraClearFlags.Depth                         ;
  //shaderCamera_m.clearFlags    = CameraClearFlags.Nothing                       ; //Don't clear anything

  //---Transform Level---//
  shaderCamera_m.cullingMask = 1<<(LayerMask.NameToLayer(layerMaskString)); //short cut : find layer by String : ~invert everything but that layer : pass bit to culling Mask

  //---Material Level---//
  //shaderCamera_m.RenderWithShader (replaceShader,"RenderType_TON"); //if replacement tag == "", all objects in scene rendered with replacment shaders	replaceShader
  shaderCamera_m.RenderWithShader (replaceShader,""); //if replacement tag == "", all objects in scene rendered with replacment shaders	replaceShader

}

// Called by the camera to apply the image effect
function OnRenderImage (source : RenderTexture, destination : RenderTexture) : void{

  doOnRenderImage(renderTexture, destination);

  nullRendTexture()   ;
  nullRendTexture_m() ;

}

function doOnRenderImage(source : RenderTexture, destination : RenderTexture) : void{
  Graphics.Blit(renderTexture, destination); // mat); 
  //renderTexture.DiscardContents(true, true); //??? does nothing
} 

