// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SequenceController(instance_id) constructor {
	
	instance = instance_id;
	
	sequence_element = noone;
	sequence_element_previous = noone;
	sequence_element_cleanup_timer = -1;
	sequences = ds_map_create();
	
	static add_sequence = function(name,sequence) {
		sequences[? name ] = sequence;
	}
	
	static change_sequence = function(name) {
		var seq = sequences[? name ];
		if (!is_undefined(seq)) {
			sequence_element_previous = sequence_element;
			sequence_element_cleanup_timer = 1;
			sequence_element = layer_sequence_create("Instances",instance.x,instance.y,seq);
		}
	}
	
	static update = function() {
		if (sequence_element_cleanup_timer >= 0 and sequence_element_previous != noone) {
			sequence_element_cleanup_timer -= 1;
			if (sequence_element_cleanup_timer == -1) {
				layer_sequence_destroy(sequence_element_previous);
				sequence_element_previous = noone;
			}
		}
		
		layer_sequence_x(sequence_element,instance.x);
		layer_sequence_y(sequence_element,instance.y);
	}
}

function sequence_controller_destroy(seq_contr_id) {
	if (!is_struct(seq_contr_id) or instanceof(seq_contr_id) != "SequenceController") return;
	ds_map_destroy(seq_contr_id.sequences);
	delete seq_contr_id;
}