//draw(0,floor(layer_count/2));
var cam = view_get_camera(0);
var cx = camera_get_view_x(cam);
var view_width = camera_get_view_width(cam);
var view_height = camera_get_view_height(cam);

shader_set(Shdr_SimpleGradient);
shader_set_uniform_f(u_width2,view_width);
shader_set_uniform_f(u_height2,view_height);
shader_set_uniform_f(u_top_color,0.5,0.5,0.8);
shader_set_uniform_f(u_bottom_color,0.9,0.9,1.0);
draw_rectangle(cx,0,cx+view_width,view_height,false);
shader_reset();



shader_set(Shdr_Clouds);
shader_set_uniform_f(u_width,view_width);
shader_set_uniform_f(u_height,view_height);
shader_set_uniform_f(u_time,current_time * 0.000001);
shader_set_uniform_f(u_scale,8);
shader_set_uniform_f(u_offset,cx);
draw_rectangle(cx,0,cx+view_width,view_height,false);
shader_reset();