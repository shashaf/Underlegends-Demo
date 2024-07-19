/// @description Menu on/off
//var start_x = camera_get_view_x(view_camera[0])
//var start_y = camera_get_view_y(view_camera[0])

if in_battle == false and (!instance_exists(obj_npc) or (instance_exists(obj_npc) 
and obj_npc.in_dialogue = false)) and in_cutscene == false and taking_item == false 
and !instance_exists(obj_item_action) and !instance_exists(obj_save_window) and 
reading == false and !instance_exists(obj_cell_action) and (x > global.camera_x and y > global.camera_y) 
and can_move == true and in_shop == false {
	if in_menu = false {
		can_move = false;
		instance_create_depth(global.camera_x + 24 + 32, global.camera_y + 26 + 168, -10, obj_menu_soul);
		instance_create_depth(global.camera_x + 32, global.camera_y + 168, -10, obj_in_game_menu);
		in_menu = true;
	}
	else {
		can_move = true;
		instance_destroy(obj_menu_soul);
		instance_destroy(obj_in_game_menu);
		if instance_exists(obj_menu_items)
			instance_destroy(obj_menu_items);
		if instance_exists(obj_menu_cell)
			instance_destroy(obj_menu_cell);
		in_menu = false;
	}
}
