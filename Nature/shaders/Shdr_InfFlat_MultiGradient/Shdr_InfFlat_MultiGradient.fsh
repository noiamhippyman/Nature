//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColor;

uniform float u_vHeight;
uniform vec3 u_vSkyColor;
uniform vec3 u_vMidColor;
uniform vec3 u_vHorizonColor;
uniform vec3 u_vStopOffset;

void main()
{
	float v = gl_FragCoord.y / u_vHeight;
    vec3 c = mix(u_vSkyColor,u_vMidColor,smoothstep(u_vStopOffset.x,u_vStopOffset.y,v));
	c = mix(c,u_vHorizonColor,smoothstep(u_vStopOffset.y,u_vStopOffset.z,v));
	gl_FragColor = v_vColor * vec4(c,1.0);
}
