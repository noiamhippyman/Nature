if (!debug_mode) return;
var cam_chunk_range = get_camera_chunk_range();
var str = "Generated Chunks: " + string(ds_map_size(chunk_map)) + 
"\nActive Chunks: " + string(instance_number(Obj_LandChunk)) +
"\nChunk Map Range: " + string(chunk_map_range) +
"\nCamera Chunk Range: " + string(cam_chunk_range);
draw_text(4,20,str);