draw_self();
if global.language == "rus" {
	draw_set_font(fnt_in_game_menu_name_rus);
}
else {
	//draw_set_font(fnt_in_game_menu);
	draw_set_font(fnt_intro);
}
draw_text(x + 30, y + 30, info_string);