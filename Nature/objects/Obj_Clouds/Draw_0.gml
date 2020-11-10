var cam = view_get_camera(0);
var cx = camera_get_view_x(cam);
var cy = camera_get_view_y(cam);
var view_width = camera_get_view_width(cam);
var view_height = camera_get_view_height(cam);

var x1 = cx;
var y1 = cy;
var x2 = cx + view_width;
var y2 = cy + view_height;

shader_set(Shdr_SimpleGradient);
shader_set_uniform_f(u_gradient_width,view_width);
shader_set_uniform_f(u_gradient_height,view_height);
shader_set_uniform_f(u_sky_color,0.5,0.5,0.8);
shader_set_uniform_f(u_horizon_color,0.9,0.9,1.0);
draw_rectangle(x1,y1,x2,y2,false);
shader_reset();

shader_set(Shdr_Clouds);
shader_set_uniform_f(u_clouds_width,view_width);
shader_set_uniform_f(u_clouds_height,view_height);
shader_set_uniform_f(u_scale,8);
var t = current_time / 100000;
for(var i = 0; i < layer_count; ++i) {
	shader_set_uniform_f(u_time,t);
	shader_set_uniform_f(u_offset,cx + i * 500, i * 500);
	draw_rectangle(x1,y1,x2,y2,false);
}
shader_reset();