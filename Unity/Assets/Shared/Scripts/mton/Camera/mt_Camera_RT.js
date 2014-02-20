#pragma strict
#pragma implicit
#pragma downcast

@script ExecuteInEditMode
@script AddComponentMenu("Image Effects/mton_PIXL")
@script RequireComponent(Camera)

private var shaderCamera    : GameObject;
public  var replaceShader   : Shader;
public  var layerMaskString : String;

protected var mainRnTexture : RenderTexture; //main camera RenderTexture
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
  renderTexture            = RenderTexture.GetTemporary (camera.pixelWidth * scaleResolution, camera.pixelHeight * scaleResolution, 8) ; //Allocate a temporary render texture.
  renderTexture.filterMode = FilterMode.Point                                                                      ; 
}

function nullRendTexture():void{ //HACK: Function can not be generalized...only operates on explicit RenderTexture :(
  if (renderTexture != null) {
    RenderTexture.ReleaseTemporary (renderTexture);
    renderTexture = null;
  }
}
/*** HACK: Function can not be generalized...only operates on explicit RenderTexture :(  ***/

function OnDisable() {	
  DestroyImmediate (shaderCamera);
  nullRendTexture();
}

// --------------------------------------------------------

function Start() {
  // Disable if we don't support image effects
  if (!SystemInfo.supportsImageEffects) {
    enabled = false;
    return;
  }

}

// --------------------------------------------------------

function OnPreRender()
{
  if (!enabled || !gameObject.active)
    return;
    
  nullRendTexture();
  initRendTexture();
  
  if (!shaderCamera) {
    shaderCamera                = new GameObject("ShaderCamera", Camera) ;
    shaderCamera.camera.depth   = camera.depth + 1;
    shaderCamera.camera.enabled = false                                  ;
    shaderCamera.hideFlags      = HideFlags.HideAndDontSave              ;
  }
  var cam = shaderCamera.camera                             ;
  cam.CopyFrom (camera)                                     ;
  cam.backgroundColor    = Color(0,0,0,0)                   ;
  cam.clearFlags         = CameraClearFlags.SolidColor      ;
  //cam.clearFlags       = CameraClearFlags.Depth           ;
  //cam.clearFlags       = CameraClearFlags.Nothing         ; //Don't clear anything
  cam.targetTexture      = renderTexture                    ;
  //cam.Render()                                            ; // ??? Do I need this on?
  
  //---Transform Level---//
  //cam.cullingMask = 1<<(LayerMask.NameToLayer(layerMaskString)); //short cut : find layer by Strin : ~invert everything but that layer : pass bit to culling Mask
  
  //---Material Level---//
  cam.RenderWithShader (replaceShader,"RenderType_TON"); //if replacement tag == "", all objects in scene rendered with replacment shaders	replaceShader
  
  /*
  //Generating DepthNormal Info
  cam.depthTextureMode = DepthTextureMode.DepthNormals      ; //activate camera depth gen
  var depthNormalShader : Shader = Shader.Find("Hidden/Camera-DepthNormalTexture");
  cam.RenderWithShader (depthNormalShader,null); //if replacement tag == "", all objects in scene rendered with replacment shaders	
  */
  
}

// Called by the camera to apply the image effect
function OnRenderImage (source : RenderTexture, destination : RenderTexture) : void{

  doOnRenderImage(renderTexture, destination);
  
  nullRendTexture();

}

function doOnRenderImage(source : RenderTexture, destination : RenderTexture) : void{
  Graphics.Blit(renderTexture, destination); // mat); 
  //renderTexture.DiscardContents(true, true); //??? does nothing
} 
