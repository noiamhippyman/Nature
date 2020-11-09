function new_cloud(x,y,image_index) {
	return [x,y,image_index];
}

function new_cloud_layer (cloud_count) {
	var cloud_layer = [];
	array_push_back(cloud_layer,cloud_count);
	if (cloud_count == 0) return cloud_layer;
	for (var i = 0; i < cloud_count; ++i) {
		var cloud = new_cloud(irandom(room_width),100+irandom(200),irandom(image_number-1));
		array_push_back(cloud_layer,cloud);
	}
	return cloud_layer;
}