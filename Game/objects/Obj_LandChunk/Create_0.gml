resources = [];

var count = 3;
var pad = 50;
for (var i = 0; i < count; ++i) {
	array_push_back(resources,instance_create_layer(x + pad + ((i / count) * (sprite_width-(pad))),y,"Instances",Obj_Tree));
}

//var count = irandom_range(10,20);
//repeat(count) {
//	array_push_back(resources,instance_create_layer(x + irandom(sprite_width),y,"Instances",Obj_Tree));
//}

deactivate = function() {
	var resource_count = array_length(resources);
	for (var i = 0; i < resource_count; ++i) {
		var resource = resources[ i ];
		instance_deactivate_object(resource);
	}
}

activate = function() {
	var resource_count = array_length(resources);
	for (var i = 0; i < resource_count; ++i) {
		var resource = resources[ i ];
		instance_activate_object(resource);
	}
}