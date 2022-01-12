//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 normal = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );\
	
	float red = (normal.r / 2.0) - 0.1;
	float green = (normal.g /2.0) - 0.1;
	float blue = (normal.b / 2.0) + 0.1;
	

	vec4 Colour = vec4(red, green , blue, normal.a);
	
	gl_FragColor = Colour;
	
}
