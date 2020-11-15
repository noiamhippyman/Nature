// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CloudSurface(width,height,count) : SurfaceBuffer(width,height) constructor {
	shader = Shdr_InfFlat_Clouds;
	layer_count = count;
	
	static update_clouds = function(width,height) {
		set_as_render_target();
		
		shader_set(shader);
	
		shader_set_uniform_f_array(shader_get_uniform(shader,"u_vResolution"),[width,height]);
			
		draw_rectangle(0,0,width,height,false);
	
		shader_reset();
	
		reset_render_target();
		
		update_buffer();
	}
	
	update_clouds(width,height);
}