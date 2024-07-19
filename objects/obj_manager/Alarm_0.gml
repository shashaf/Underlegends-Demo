/// @description Старт игры

if global.game_status != -1 {
	room_goto(rm_intro);
}
else if global.game_status == -1 { //instant loading
	instance_create_depth(global.player_x, global.player_y, 0, obj_patience);
	room_goto(global.room_name);
}

