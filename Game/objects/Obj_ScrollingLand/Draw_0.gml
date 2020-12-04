var c = view_camera[0];

// testing moving camera
var t = (current_time / 1000) * 25.0;
camera_set_view_pos(c,floor(t),0);
	
var cam_width = camera_get_view_width(c);
var cam_height = camera_get_view_height(c);
var pos_x = camera_get_view_x(c);
var pos_y = cam_height - ground_height;

shader_set(shader);
shader_set_uniform_f(u_resolution,cam_width,cam_height);
shader_set_uniform_f(u_position,pos_x,pos_y);
draw_sprite_stretched(Spr_LandTile,0,pos_x,pos_y,cam_width,ground_height);
shader_reset();