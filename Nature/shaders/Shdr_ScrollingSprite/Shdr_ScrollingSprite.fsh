//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 u_vTexOffset;
uniform vec4 u_vTexUV;

void main()
{	
	//SECOND THING - works properly but scaling is way too big
	//vec2 xrange = vec2(u_vTexUV.x,u_vTexUV.z);// left - right
	//vec2 yrange = vec2(u_vTexUV.y,u_vTexUV.w);// top - bottom
	//vec2 offset = v_vTexcoord + u_vTexOffset;
	//if (offset.x > 1.0) offset.x -= 1.0;
	//if (offset.x < 0.0) offset.x += 1.0;
	//if (offset.y > 1.0) offset.y -= 1.0;
	//if (offset.y < 0.0) offset.y += 1.0;
	//vec2 uv = vec2(
	//	mix(xrange.x,xrange.y,offset.x),
	//	mix(yrange.x,yrange.y,offset.y)
	//);
	
    //gl_FragColor = v_vColour * texture2D( gm_BaseTexture, uv );
	
	 //THIRD THING - works once then goes back to normal and doesn't work in negatives, even though it should. Right?
	vec2 xrange = vec2(u_vTexUV.x,u_vTexUV.z);// left - right
	vec2 yrange = vec2(u_vTexUV.y,u_vTexUV.w);// top - bottom
	float xdiff = xrange.y - xrange.x;
	float ydiff = yrange.y - yrange.x;
	
	vec2 uv = v_vTexcoord + u_vTexOffset;
	
	while (uv.x >= xrange.y) uv.x -= xdiff;
	while (uv.x < xrange.x) uv.x += xdiff;
	
	while (uv.y >= yrange.y) uv.y -= ydiff;
	while (uv.y < yrange.x) uv.y += ydiff;
	
	gl_FragColor = v_vColour * texture2D(gm_BaseTexture, uv);
}
