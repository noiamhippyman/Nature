if (event_data[? "event_type" ] == "sequence event" and layer_sequence_get_instance(event_data[? "element_id" ]) == sequence_instance) {
	var msg = event_data[? "message" ];
	switch (msg) {
		case "tree fall left":
			instance_destroy(self);
			break;
		case "tree fall right":
			instance_destroy(self);
			break;
		default:
			break;
	}
}