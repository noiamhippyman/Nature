show_debug_overlay(true);

chunk_map = ds_map_create();
chunk_map_range = {
	first: 0,
	last: 0
};

chunk_width = sprite_get_width(Spr_LandChunk);
chunk_height = sprite_get_height(Spr_LandChunk);

get_camera_chunk_range = function() {
	var c = view_get_camera(0);
	var cx = camera_get_view_x(c);
	var cendx = cx + camera_get_view_width(c);
	var range = {
		first: floor(cx / chunk_width) - 1,
		last: floor(cendx / chunk_width) + 1
	}
	return range;
}

chunk_exists = function(chunk_x) {
	var key = string(chunk_x);
	var chunk = chunk_map[? key ];
	return !is_undefined(chunk);
}

generate_chunk = function(chunk_x) {
	
	// update chunk map range 
	if (chunk_x < chunk_map_range.first) chunk_map_range.first = chunk_x;
	if (chunk_x > chunk_map_range.last) chunk_map_range.last = chunk_x;
	
	// generate chunk instance
	var key = string(chunk_x);
	var chunk_inst = instance_create_layer(chunk_x * chunk_width,room_height - chunk_height,"Instances",Obj_LandChunk);
	chunk_map[? key ] = chunk_inst;
	
}



var cam_chunk_range = get_camera_chunk_range();
var cx = cam_chunk_range.first;
var max_cx = cam_chunk_range.last;
while (cx < max_cx) {
	cx += 1;
	generate_chunk(cx);
}