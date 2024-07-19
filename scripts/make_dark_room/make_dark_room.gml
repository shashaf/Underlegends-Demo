// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function make_dark_room(alpha){
	if !instance_exists(obj_dark_room) {
		instance_create_depth(obj_patience.x, obj_patience.y, obj_patience.depth - 9999, obj_dark_room)
		obj_dark_room.image_alpha = alpha;
	}
}