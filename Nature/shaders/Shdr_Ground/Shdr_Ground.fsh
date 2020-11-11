//
// Simple passthrough fragment shader
//
varying vec2 v_uv;
uniform vec2 u_resolution;

void main()
{
    gl_FragColor = vec4(1.0,0.5,0.2,1.0);
}
