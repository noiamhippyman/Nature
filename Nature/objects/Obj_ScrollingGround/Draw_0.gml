var spr_uv = sprite_get_uvs(sprite_index,image_index);
var tex_uv = [
	spr_uv[0],
	spr_uv[1],
	spr_uv[2],
	spr_uv[3]
];
shader_set(Shdr_ScrollingSprite);
shader_set_uniform_f_array(u_vTexOffset,tex_offset);
shader_set_uniform_f_array(u_vTexUV,tex_uv);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
shader_reset();