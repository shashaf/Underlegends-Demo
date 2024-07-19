obj_patience.battle_type = choose_battle(global.room_index);
//obj_Patience.battle_trigger = true;
with (obj_patience) {
	can_move = false;
	in_battle = true;
	room_before_battle = room;
	x_before_battle = x;
	y_before_battle = y;
	alarm[3] = 30;
}
//instance_destroy(obj_lemikeMeet3);