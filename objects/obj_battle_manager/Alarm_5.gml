/// @description Диалог после атаки в туториале
if instance_exists(obj_bullet) {
	obj_bullet.alarm[0] = 1;
	//instance_destroy(obj_bullet);
}
battle_state = "dodging";
//new_border_left = 32 + 225;
//new_border_width = border_height;
obj_soul_battle.dodging = true;
if global.player_hp == global.player_max_hp and tutorial_state == "Fight" {
	enemies[0].dialogue_current = 47;
	enemies[0].dialogue_end = 63;
	if !instance_exists(obj_spaghetti) {
		instance_create_depth(room_width/2, room_height/2, 0, obj_spaghetti);
	}
	for (var _i = 0; _i < 8; _i++) {
		if global.item_IDs[_i] == 0 or global.item_IDs[_i] == 10  {
			global.item_IDs[_i] = 10;
			global.items[_i] = obj_spaghetti;
			break;
		}
	}
}
enemies[0].alarm[7] = 1;
