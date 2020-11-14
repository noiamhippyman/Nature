var cam = view_get_camera(0);
var cx = camera_get_view_x(cam);
var cw = camera_get_view_width(cam);

x = cx;

tex_offset[0] = ((cx mod cw) / cw) * 0.5;
//var tex = sprite_get_texture(sprite_index,image_index);
//var spr_uv = texture_get_uvs(tex);

//var xaxis = key_to_axis(vk_right,vk_left);
//var yaxis = key_to_axis(vk_down,vk_up);
//var spd = 0.2;
//var dt = delta_time / 1000000;
//if (xaxis != 0) {
//	tex_offset[0] += xaxis * spd * dt;
	
//	// You don't necessarily have to do this BUT
//	// doing this keeps the while loops small in Shdr_ScrollingSprite
//	if (tex_offset[0] >= 1) tex_offset[0] -= 1;
//	if (tex_offset[0] < 0) tex_offset[0] += 1;
//}

//if (yaxis != 0) {
//	tex_offset[1] += yaxis * spd * dt;
	
//	// You don't necessarily have to do this BUT
//	// doing this keeps the while loops small in Shdr_ScrollingSprite
//	if (tex_offset[1] >= 1) tex_offset[1] -= 1;
//	if (tex_offset[1] < 0) tex_offset[1] += 1;
//}

//if (keyboard_check_pressed(vk_enter)) {
//	rotating = !rotating;
//	//if (!rotating) image_angle = 0;
//}

//if (rotating) {
//	image_angle = (image_angle + 100 * dt) mod 360;
//} else {
//	if (image_angle != 0) {
//		image_angle = (image_angle + 100 * dt);
//		if (image_angle >= 360) {
//			image_angle = 0;
//		}
//	}
//}