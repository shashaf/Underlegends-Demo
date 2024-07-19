//if global.game_status > 0 {
if global.game_status != -1 {
	room_goto(rm_intro);
	//room_goto(rm_menu);
	//room_goto(rm_reject_start);
}
else if global.game_status == -1 { //instant loading
	instance_create_depth(global.player_x, global.player_y, 0, obj_patience);
	room_goto(global.room_name);
}
