//var dt = delta_time / 1000000;
//var t = current_time * 0.001;
//for(var i = 0; i < layer_count; ++i) {
//	var spd = ((i+1) / layer_count) * base_speed;
//	var scale = ((i+1) / layer_count) * base_scale;
//	var cloud_layer = cloud_layers[i];
//	var cloud_count = cloud_layer[0];
//	if (cloud_count == 0) continue;
//	for (var j = 1; j <= cloud_count; ++j) {
//		var cloud = cloud_layer[j];
//		cloud[@ 0 ] += spd * (speed_offset_multiplier * (i+1)) * dt;
//		cloud[@ 1 ] += sin(t + (i*5 + j*5)) * base_sin_dist * dt;
//		if (cloud[ 0 ] >= room_width + sprite_xoffset * scale) {
//			cloud[@ 0 ] = -sprite_xoffset * scale;
//		}
//	}
//}