layer_count = 5;

var shader = Shdr_Clouds;
u_clouds_width = shader_get_uniform(shader,"u_width");
u_clouds_height = shader_get_uniform(shader,"u_height");
u_scale = shader_get_uniform(shader,"u_scale");
u_time = shader_get_uniform(shader,"u_time");
u_offset = shader_get_uniform(shader,"u_offset");

shader = Shdr_SimpleGradient;
u_gradient_width = shader_get_uniform(shader,"u_width");
u_gradient_height = shader_get_uniform(shader,"u_height");
u_sky_color = shader_get_uniform(shader,"u_sky_color");
u_horizon_color = shader_get_uniform(shader,"u_horizon_color");