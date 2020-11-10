if (keyboard_check_pressed(vk_down)) {
	layer_count = max(layer_count-1,1);
}

if (keyboard_check_pressed(vk_up)) {
	layer_count++;
}