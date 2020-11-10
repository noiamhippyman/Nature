//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_width;
uniform float u_height;
uniform vec3 u_sky_color;
uniform vec3 u_horizon_color;

void main()
{
	float pct = gl_FragCoord.y / u_height;
    vec3 c = mix(u_sky_color,u_horizon_color,pct);
	gl_FragColor = vec4(c,1.0);
	//gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
}
