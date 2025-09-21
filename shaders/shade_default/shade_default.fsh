//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float vecRed;
uniform float vecBlue;
uniform float vecGreen;
uniform float vecAlpha;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );

	gl_FragColor.r *= 1.0 * vecRed;
	gl_FragColor.b *= 1.0 * vecBlue;
	gl_FragColor.g *= 1.0 * vecGreen;
	gl_FragColor.a *= 1.0 * vecAlpha;
}
