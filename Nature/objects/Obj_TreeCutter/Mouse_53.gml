with (Obj_Tree) {
	if (point_in_rectangle(mouse_x,mouse_y,bbox_left,bbox_top,bbox_right,bbox_bottom)) {
		var dir = sign(x - mouse_x);
		tree_fall(id,dir < 0);
		break;
	}
}