// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SkyGradientSurface(width,height) : SurfaceBuffer(width,height) constructor {
	shader = Shdr_InfFlat_MultiGradient;
	color = {
		sky: [0.286,0.647,0.749],
		mid: [0.576,0.807,0.870],
		horizon: [0.694,0.831,0.866]
	};
	stop = [ 0.2,0.7,0.92 ];
	
	static set_sky_color = function(r,g,b) {
		color.sky = [r,g,b];
	}
	
	static set_mid_color = function(r,g,b) {
		color.mid = [r,g,b];
	}
	
	static set_horizon_color = function(r,g,b) {
		color.horizon = [r,g,b];
	}
	
	static update_sky = function(width,height) {
		set_as_render_target();
	
		shader_set(shader);
	
		shader_set_uniform_f(shader_get_uniform(shader,"u_vHeight"),height);
		shader_set_uniform_f_array(shader_get_uniform(shader,"u_vSkyColor"), color.sky);
		shader_set_uniform_f_array(shader_get_uniform(shader,"u_vMidColor"), color.mid);
		shader_set_uniform_f_array(shader_get_uniform(shader,"u_vHorizonColor"), color.horizon);
		shader_set_uniform_f_array(shader_get_uniform(shader,"u_vStopOffset"), stop);
	
		draw_rectangle(0,0,width,height,false);
	
		shader_reset();
	
		reset_render_target();
		update_buffer();
	}
	
	update_sky(width,height);
}

