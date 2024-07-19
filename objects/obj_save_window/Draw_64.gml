draw_set_font(fnt_in_game_menu_name);

if global.game_seconds < 10 {
	time = string(global.game_minutes) + ":" + "0" + string(global.game_seconds);
}
else {
	time = string(global.game_minutes) + ":" + string(global.game_seconds);
}

if global.game_status != 0 {
	if image_index == 4 
		draw_set_color(c_yellow);
	else 
		draw_set_color(c_white);
	
	//draw_text(140, 95 + 60, "--");
	draw_text(142, 54 + 60, global.human_1_name);
	draw_text(332, 54 + 60, global.player_lv);
	//draw_text(332, 54 + 60, "0");
	draw_text(433, 54 + 60, time);
	//draw_text(433, 54 + 60, "0:00");
	draw_set_font(fnt_in_game_menu_name_rus);
	draw_text(142, 95 + 60, global.room_label);
}