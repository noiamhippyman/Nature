layer_count = 10;

var shader = Shdr_Clouds;
u_clouds_width = shader_get_uniform(shader,"u_width");
u_clouds_height = shader_get_uniform(shader,"u_height");
u_scale = shader_get_uniform(shader,"u_scale");
u_time = shader_get_uniform(shader,"u_time");
u_offset = shader_get_uniform(shader,"u_offset");

shader = Shdr_MultiGradient;
u_gradient_width = shader_get_uniform(shader,"u_width");
u_gradient_height = shader_get_uniform(shader,"u_height");
u_sky_color = shader_get_uniform(shader,"u_sky_color");
u_mid_color = shader_get_uniform(shader,"u_mid_color");
u_horizon_color = shader_get_uniform(shader,"u_horizon_color");

sky_color = [
	[0.24,0.32,0.588],
	[0.2,0.6,0.70],
	[0.76,1,1]
];