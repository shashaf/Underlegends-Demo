/// @description Insert description here
// You can write your code in this editor
item_number = 1;
key_item_number = 1;
depth = -9999;
image_speed = 0;
mem_x = obj_menu_soul.x;
mem_y = obj_menu_soul.y;
if global.language == "rus" {
	sprite_index = spr_menu_items_rus;
}
if instance_exists(obj_dark_room){
	depth = obj_dark_room.depth - 1;
}