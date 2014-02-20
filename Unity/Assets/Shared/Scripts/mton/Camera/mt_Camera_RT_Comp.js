#pragma strict
#pragma implicit
#pragma downcast

public class mt_Camera_RT_Comp extends mt_Camera_RT {

  public var compositeShader : Shader    ;
  public var ethTexture      : Texture2D ;
  public var mskTexture      : Texture2D ;
  public var nrmTexture      : Texture2D ;

  function Start() {
    super.Start();
  }

  private var m_CompositeMaterial : Material;
  private function GetCompositeMaterial() : Material {
    if (m_CompositeMaterial == null) {
      m_CompositeMaterial           = new Material( compositeShader ) ; //Create a temporary Material from a Shader.
      m_CompositeMaterial.hideFlags = HideFlags.HideAndDontSave       ;
    }
    return m_CompositeMaterial;
  } 

  function doOnRenderImage(source : RenderTexture, destination : RenderTexture) : void {
    var compositeMat:Material = GetCompositeMaterial()               ;
    //compositeMat.SetTexture ("_EthrTex", ethTexture)                 ;
    compositeMat.SetTexture ("_EthrTex", renderTexture)                 ;
    //compositeMat.SetTexture ("_EthrTex", renderTexture.depthBuffer)                 ;
    compositeMat.SetTexture ("_MaskTex", mskTexture)                 ;
    compositeMat.SetTexture ("_NormTex", nrmTexture)                 ;
    ImageEffects.BlitWithMaterial(compositeMat, source, destination) ;
    //Graphics.Blit(renderTexture, destination)                      ; // mat) ;
    //Graphics.Blit(delTexture, destination)                         ; // mat) ;
  }


  private static function Render4TapQuad( dest : RenderTexture, offsetX : float, offsetY : float ) : void {
    GL.Begin( GL.QUADS );

    // Direct3D needs interesting texel offsets!		
    var off = Vector2.zero;
    if( dest != null )
      off = dest.GetTexelOffset() * 0.75;

    Set4TexCoords( off.x, off.y, offsetX, offsetY ) ;
    GL.Vertex3( 0,0, 0.1 )                          ;

    Set4TexCoords( 1.0 + off.x, off.y, offsetX, offsetY ) ;
    GL.Vertex3( 1,0, 0.1 )                                ;

    Set4TexCoords( 1.0 + off.x, 1.0 + off.y, offsetX, offsetY ) ;
    GL.Vertex3( 1,1, 0.1 )                                      ;

    Set4TexCoords( off.x, 1.0 + off.y, offsetX, offsetY ) ;
    GL.Vertex3( 0,1, 0.1 )                                ;

    GL.End();
  }

  private static function Set4TexCoords( x : float, y : float, offsetX : float, offsetY : float ) : void
  {
    GL.MultiTexCoord2( 0, x - offsetX, y - offsetY );
    GL.MultiTexCoord2( 1, x + offsetX, y - offsetY );
    GL.MultiTexCoord2( 2, x + offsetX, y + offsetY ); 
    GL.MultiTexCoord2( 3, x - offsetX, y + offsetY );
  }


}
