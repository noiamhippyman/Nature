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
uniform vec3 u_stop_offset;

void main()
{
	float pct = gl_FragCoord.y / u_height;
    vec3 c = mix(u_sky_color,u_mid_color,smoothstep(u_stop_offset.x,u_stop_offset.y,pct));
	c = mix(c,u_horizon_color,smoothstep(u_stop_offset.y,u_stop_offset.z,pct));
	gl_FragColor = vec4(c,1.0);
}
