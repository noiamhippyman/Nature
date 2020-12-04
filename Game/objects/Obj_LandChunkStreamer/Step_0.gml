var cam_chunk_range = get_camera_chunk_range();

// Deactivate any land chunks that are out of the camera view
if (cam_chunk_range.first > chunk_map_range.first) {
	// deactivate all land chunks out of view to the left
	for (var i = chunk_map_range.first; i < cam_chunk_range.first; ++i) {
		var key = string(i);
		var chunk_inst = chunk_map[? key ];
		instance_deactivate_object(chunk_inst);
	}
}
if (cam_chunk_range.last < chunk_map_range.last) {
	// deactivate all land chunks of out view to the right
	for (var i = cam_chunk_range.last; i < chunk_map_range.last; ++i) {
		var key = string(i);
		var chunk_inst = chunk_map[? key ];
		instance_deactivate_object(chunk_inst);
	}
}

for (var i = cam_chunk_range.first; i <= cam_chunk_range.last; ++i) {
	// If chunk hasn't been generated yet
	if (!chunk_exists(i)) {
		// Generate this chunk
		generate_chunk(i);
	} else { // else if chunk has already been generated
		var key = string(i);
		var chunk_inst = chunk_map[? key ];
		// activate this chunk if it's inactive
		if (!instance_exists(chunk_inst)) instance_activate_object(chunk_inst);
	}
}