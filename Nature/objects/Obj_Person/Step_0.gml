var dt = delta_time / 1000000;
var key = vk_space;

if (keyboard_check_pressed(key)) {
	state_machine.change("walk");
}

if (keyboard_check_released(key)) {
	state_machine.change("idle");
}

state_machine.update(dt);
sequencer.update();