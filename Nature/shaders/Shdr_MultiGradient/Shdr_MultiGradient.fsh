//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_width;
uniform float u_height;
uniform vec3 u_sky_color;
uniform vec3 u_mid_color;
uniform vec3 u_horizon_color;

void main()
{
	float stop1 = 0.4;
	float stop2 = 0.7;
	float stop3 = 0.85;
	float pct = gl_FragCoord.y / u_height;
    vec3 c = mix(u_sky_color,u_mid_color,smoothstep(stop1,stop2,pct));
	c = mix(c,u_horizon_color,smoothstep(stop2,stop3,pct));
	gl_FragColor = vec4(c,1.0);
}
