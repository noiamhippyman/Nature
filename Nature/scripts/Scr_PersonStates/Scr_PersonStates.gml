function PersonStateIdle(state_machine_id) : State(state_machine_id) constructor {
	
	static on_enter = function() {
		//var seq = Seq_Person_Idle;
		var inst = state_machine.instance;
		inst.sequencer.change_sequence("idle");
		//state_machine.instance.sequence_element = layer_sequence_create("Instances",inst.x,inst.y,seq);
	}
	
	static on_update = function(dt) {
		if (keyboard_check_pressed(vk_enter)) {
			state_machine.change("walk");
		}
	}
}

function PersonStateWalk(state_machine_id) : State(state_machine_id) constructor {
	
	static on_enter = function() {
		//var seq = Seq_Person_Walk;
		var inst = state_machine.instance;
		//state_machine.sequence_element = layer_sequence_create("Instances",inst.x,inst.y,seq);
		inst.sequencer.change_sequence("walk");
	}
	
	static on_update = function(dt) {
		state_machine.instance.x += 100 * dt;
		layer_sequence_x(state_machine.instance.sequencer.sequence_element,state_machine.instance.x);
		if (keyboard_check_released(vk_enter)) {
			state_machine.change("idle");
		}
	}
}