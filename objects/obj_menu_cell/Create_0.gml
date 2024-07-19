/// @description Insert description here
// You can write your code in this editor
depth = -9999;
text_to_draw = "Ring...";
box_y = box_y_check();
can_draw = false;
if instance_exists(obj_dark_room){
	depth = obj_dark_room.depth - 1;
}