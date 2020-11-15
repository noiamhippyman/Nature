//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 u_vTexOffset;
uniform vec4 u_vTexUV;

void main()
{	
	//THIRD THING - works once then goes back to normal and doesn't work in negatives, even though it should. Right?
	vec2 xrange = vec2(u_vTexUV.x,u_vTexUV.z);// left - right
	vec2 yrange = vec2(u_vTexUV.y,u_vTexUV.w);// top - bottom
	float xdiff = xrange.y - xrange.x;
	float ydiff = yrange.y - yrange.x;
	
	vec2 d = vec2(xdiff,ydiff);
	
	vec2 uv = v_vTexcoord + (d * u_vTexOffset);
	
	while (uv.x >= xrange.y) uv.x -= xdiff;
	while (uv.x < xrange.x) uv.x += xdiff;
	
	while (uv.y >= yrange.y) uv.y -= ydiff;
	while (uv.y < yrange.x) uv.y += ydiff;
	
	gl_FragColor = v_vColour * texture2D(gm_BaseTexture, uv);
}
