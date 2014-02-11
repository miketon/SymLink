
/*	
			// Copies aTexture to rTex and displays it in all cameras.
	var aTexture : Texture;
	var rTex : RenderTexture;
	
	function Start() {
	     //rTex = camera.targetTexture; //RenderTexture.active;	
		if(!aTexture || !rTex){
		  Debug.LogError("A texture or a render texture are missing, assign them." + camera);
		}
	}
	
	function OnRenderImage(src: RenderTexture, dest: RenderTexture){
		//Graphics.Blit (aTexture, rTex);
		Graphics.Blit(aTexture, dest); // mat);
	}
	
	// Get the contents of a RenderTexture into a Texture2D.
function GetRTPixels(rt: RenderTexture):Texture2D {
	// Keep a note of the currently active RenderTexture.
	var currentActiveRT = RenderTexture.active;
	
	// Set the supplied RenderTexture as the active one.
	RenderTexture.active = rt;
	
	// Create a new Texture2D and read the RenderTexture image
	// into it.
	var tex = new Texture2D(rt.width, rt.height);
	tex.ReadPixels(new Rect(0, 0, tex.width, tex.height), 0, 0);
	
	// Set the previously active RenderTexture back before returning.
	RenderTexture.active = currentActiveRT;
	return tex;
}
*/

/*
#pragma strict
public var etherealShader: Shader;
public var aTexture : Texture;

function Start () {
  // Render tagged objects with a "heat vision" effect.
  camera.RenderWithShader(etherealShader, "Ethereal");
}

function OnPostRender(){
  Graphics.DrawTexture(Rect(0, 0, 10, 10), aTexture);
}
*/


#pragma strict
@script ExecuteInEditMode
@script RequireComponent (Camera)
// The culling mask that should be used for rendering
var cullingMask : LayerMask;

// The replacement shaders
var dreamReplacementShader : Shader;
var deathReplacementShader : Shader;
var maskReplacementShader : Shader;

// The magic composite material
var dimensionCompositeMaterial : Material;

// The render textures for each dimension
private var dreamRT : RenderTexture;
private var deathRT : RenderTexture;
private var maskRT : RenderTexture;

// The camera that renders the replacement shaders (Don’t access this directly, use GetPPCamera())
private var ppCamera:Camera;

// Handle any needed pre processing
function OnPreCull() {
   // Start from nothing
   CleanRenderTextures();
   
   // Reference to ppCamera’s camera
   var cam:Camera = GetPPCamera();
   
   // Set up camera
   cam.CopyFrom(this.camera);
   cam.cullingMask = this.cullingMask;
   cam.clearFlags = CameraClearFlags.Skybox;
   cam.backgroundColor = Color(0.0,0.0,0.0,0.0);
   
   // Render Dream Dimension
   dreamRT = RenderTexture.GetTemporary(Screen.width, Screen.height, 16);
   cam.targetTexture = dreamRT;
   cam.RenderWithShader(this.dreamReplacementShader, "RenderEffect");
   
   // Render Death Dimension
   deathRT = RenderTexture.GetTemporary(Screen.width, Screen.height, 16);
   cam.targetTexture = deathRT;
   cam.RenderWithShader(this.deathReplacementShader, "RenderEffect");
   
   // Render Death Dimension
   maskRT = RenderTexture.GetTemporary(Screen.width, Screen.height, 16);
   cam.targetTexture = maskRT;
   cam.RenderWithShader(this.maskReplacementShader, "RenderEffect");
}

// Post Processing magic
// @param source
// @param destination

	var aTexture : Texture;
	//function OnRenderImage(src: RenderTexture, dest: RenderTexture){

function OnRenderImage(source:RenderTexture, destination:RenderTexture){
   // We do nothing with the source render texture, the camera didn’t do anything to it anyway!
      
   // Magically composite the render textures together into the final render
   // The shader used in the dimensionCompositeMaterial for compositing these textures is outside the scope of this post
   // Will have a post about CG full screen post processing effects sometime in the future
   /*
   RenderTexture.active = destination;
   dimensionCompositeMaterial.SetTexture("_DreamRender", dreamRT);
   dimensionCompositeMaterial.SetTexture("_DeathRender", deathRT);
   dimensionCompositeMaterial.SetTexture("_MaskRender", maskRT);
   */
   /*
   GL.PushMatrix ();
      GL.LoadOrtho ();
      for (var i:int = 0; i < dimensionCompositeMaterial.passCount; i++) {
         dimensionCompositeMaterial.SetPass (i);
         Graphics.DrawQuad();
      }
   GL.PopMatrix ();
   */
   
   //var camCapture:RenderTexture = RenderTexture.GetTemporary(Screen.width, Screen.height, 16);	
   Graphics.Blit(aTexture, destination); // mat); 
   // Clean up
   CleanRenderTextures();
}

//Cleanup if we get disabled
function OnDisable()
{
   CleanResources();
}

// Camera that renders the replacement shaders
// ppCamera getter
// @return
private function GetPPCamera():Camera
{
   // Create the shader camera if it doesn’t exist yet
   if(!ppCamera) {
      ppCamera = new GameObject("PPCamera", Camera) as Camera;
      ppCamera.camera.enabled = false;
      ppCamera.hideFlags = HideFlags.HideAndDontSave;
   }
   
   return ppCamera.camera;
}


// Cleanup all resources used for Post Processing

private function CleanResources()
{
   if(ppCamera)
   {
      DestroyImmediate(ppCamera);
   }
   CleanRenderTextures();
}

// Cleanup Temporary RenderTexture resources

private function CleanRenderTextures()
{
   if(deathRT != null) {
      RenderTexture.ReleaseTemporary(deathRT);
      deathRT = null;
   }
   if(dreamRT != null) {
      RenderTexture.ReleaseTemporary(dreamRT);
      dreamRT = null;
   }
   if(maskRT != null) {
      RenderTexture.ReleaseTemporary(maskRT);
      maskRT = null;
   }
}

