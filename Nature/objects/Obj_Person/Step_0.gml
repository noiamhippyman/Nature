var xaxis = key_to_axis(vk_right,vk_left);
var dt = delta_time / 1000000;
x += xaxis * 5000 * dt;

var cam = view_get_camera(0);
camera_set_view_pos(cam,x - camera_get_view_width(cam) / 2,0);