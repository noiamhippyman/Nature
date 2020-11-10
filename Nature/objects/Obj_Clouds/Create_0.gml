var shader = Shdr_Clouds;
u_width = shader_get_uniform(shader,"u_width");
u_height = shader_get_uniform(shader,"u_height");
u_scale = shader_get_uniform(shader,"u_scale");
u_time = shader_get_uniform(shader,"u_time");
u_offset = shader_get_uniform(shader,"u_offset");

shader = Shdr_SimpleGradient;
u_width2 = shader_get_uniform(shader,"u_width");
u_height2 = shader_get_uniform(shader,"u_height");
u_top_color = shader_get_uniform(shader,"u_top_color");
u_bottom_color = shader_get_uniform(shader,"u_bottom_color");

//cloud_layers = [];
//base_scale = 2.5;
//base_speed = 5;
//base_sin_dist = 8;
//speed_offset_multiplier = 3;

//randomize();


////array_push_back(cloud_layers,new_cloud_layer(100));
////array_push_back(cloud_layers,new_cloud_layer(50));
////array_push_back(cloud_layers,new_cloud_layer(20));

//array_push_back(cloud_layers,new_cloud_layer(100));
//array_push_back(cloud_layers,new_cloud_layer(10));
//array_push_back(cloud_layers,new_cloud_layer(2));

//layer_count = array_length(cloud_layers);

//draw = function(starti,endi) {
//	for(var i = starti; i < endi; ++i) {
//		var scale = ((i+1) / layer_count) * base_scale;
//		var cloud_layer = cloud_layers[i];
//		var cloud_count = cloud_layer[0];
//		if (cloud_count == 0) continue;
//		for (var j = 1; j <= cloud_count; ++j) {
//			var cloud = cloud_layer[j];
//			var cx = cloud[0];
//			var cy = cloud[1];
//			var cimage = cloud[2];
//			draw_sprite_ext(sprite_index,cimage,cx,cy,scale,scale,0,image_blend,image_alpha);
//		}
//	}
//}