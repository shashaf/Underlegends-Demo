/// @description Начало джем диалога

with (obj_battle_manager) {
	battle_state = "jam";
	obj_soul_battle.x = new_border_left + new_border_width/2;
	obj_soul_battle.y = y + border_height/2;
	new_border_left = 32 + 225;
	new_border_width = border_height;
	//current_text = "";
	//text_to_draw = "";
}
alarm[7] = 1;





