//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 normal = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	
	vec4 Colour = vec4(normal.r + 0.5, normal.g + 0.5, normal.b + 0.5, normal.a);
	
	gl_FragColor = Colour;
}
