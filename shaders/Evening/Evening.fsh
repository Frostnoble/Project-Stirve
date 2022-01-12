//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 normal = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	float green = normal.g / 2.0;
	vec4 Colour = vec4(normal.r - 0.1, green - 0.1 , normal.b - 0.7, normal.a);
	
	gl_FragColor = Colour;
}
