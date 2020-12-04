var xaxis = key_to_axis(vk_right,vk_left);
if (xaxis != 0) {
	var cx = camera_get_view_x(view_camera[0]);
	var spd = 25;
	camera_set_view_pos(view_camera[0],cx + spd * xaxis, 0);
}