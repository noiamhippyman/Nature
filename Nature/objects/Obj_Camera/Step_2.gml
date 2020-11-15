var cam = view_get_camera(0);
if (instance_exists(target)) {
	var cx = target.x - camera_get_view_width(cam) / 2;
	camera_set_view_pos(cam,cx,0);
} else {
	var spd = 100;
	var dt = delta_time / 1000000;
	var xaxis = key_to_axis(vk_right,vk_left);
	
	if (xaxis != 0) {
		var cx = camera_get_view_x(cam) + xaxis * spd * dt;
		camera_set_view_pos(cam,cx,0);
	}
}

if (edge_scrolling) {
	var wmx = window_mouse_get_x();
	var vw = camera_get_view_width(cam);
	var pad = 32;
	if (wmx < pad or wmx > vw - pad) {
		var dir = sign(wmx - (vw/2));
		var cx = camera_get_view_x(cam) + dir * spd * dt;
		camera_set_view_pos(cam,cx,0);
	}
}