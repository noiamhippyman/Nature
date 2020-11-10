function tree_fall(tree_id,should_fall_left) {
	if (!instance_exists(tree_id) or tree_id.object_index != Obj_Tree or tree_id.in_sequence) return;
	
	var seq = should_fall_left ? Seq_Tree_Fall_Left : Seq_Tree_Fall_Right;
	var seq_element = layer_sequence_create("Instances",tree_id.x,tree_id.y,seq);
	var seq_inst = layer_sequence_get_instance(seq_element);
	sequence_instance_override_object(seq_inst,Obj_Tree,tree_id);
	
}

function move_instance(inst_id,x,y) {
	if (!instance_exists(inst_id)) return;
	inst_id.x = x;
	inst_id.y = y;
}