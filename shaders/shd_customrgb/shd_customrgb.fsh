//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float customR;
uniform float customB;
uniform float customG;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    gl_FragColor.r *= mix(0.0,0.33, customR);
gl_FragColor.b *= mix(0.0,0.33, customB);
gl_FragColor.g *= mix(0.0,0.33, customG);
}
