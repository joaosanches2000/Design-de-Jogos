//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float flash;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragColor = vec4(gl_FragColor.r + 0.7,	gl_FragColor.g + 0.1,	gl_FragColor.b + 0.0,	gl_FragColor.a);
}
