var cam = view_get_camera(0);
var cx = camera_get_view_x(cam);
var cy = camera_get_view_y(cam);
var cw = camera_get_view_width(cam);
var ch = camera_get_view_height(cam);

var x1 = cx;
var y1 = cy;
var x2 = cx + cw;
var y2 = cy + ch;

var axis = key_to_axis(vk_down,vk_up);
if (axis != 0) {
	cloud_density += axis * 0.01;
	cloud_density = clamp(cloud_density,0,1);
}

sky_gradient.draw(cx,cy);


// Draw Clouds
shader_set(Shdr_InfFlat_Clouds);
shader_set_uniform_f_array(shader_get_uniform(Shdr_InfFlat_Clouds,"u_vResolution"),[cw,ch])
shader_set_uniform_f(shader_get_uniform(Shdr_InfFlat_Clouds,"u_fViewOffsetX"),cx);
shader_set_uniform_f(shader_get_uniform(Shdr_InfFlat_Clouds,"u_fDensity"),cloud_density);

var count = 5;
for (var i = 0; i < count; ++i) {
	shader_set_uniform_f(shader_get_uniform(Shdr_InfFlat_Clouds,"u_fTime"),current_time + 10000.0 * i);
	shader_set_uniform_f(shader_get_uniform(Shdr_InfFlat_Clouds,"u_fScale"),i * (1/count) + 0.4);
	draw_rectangle(x1,y1,x2,y2,false);
}

shader_reset();

// Draw Ground
shader_set(Shdr_InfFlat_Ground);
shader_set_uniform_f_array(shader_get_uniform(Shdr_InfFlat_Ground,"u_vResolution"),[cw,ch])
shader_set_uniform_f(shader_get_uniform(Shdr_InfFlat_Ground,"u_fViewOffsetX"),cx);
shader_set_uniform_f(shader_get_uniform(Shdr_InfFlat_Ground,"u_fFloorY"),ground_position);
draw_rectangle(x1,y1,x2,y2,false);
shader_reset();