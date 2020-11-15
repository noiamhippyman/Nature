var spr_uv = sprite_get_uvs(sprite_index,image_index);
var tex_uv = [
	spr_uv[0],
	spr_uv[1],
	spr_uv[2],
	spr_uv[3]
];
var cam = view_get_camera(0);
var cx = camera_get_view_x(cam);
var cw = camera_get_view_width(cam);
tex_offset[0] = cx / room_width;

shader_set(Shdr_ScrollingSprite);
shader_set_uniform_f_array(u_vTexOffset,tex_offset);
shader_set_uniform_f_array(u_vTexUV,tex_uv);
draw_sprite_ext(sprite_index,image_index,cx,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
shader_reset();