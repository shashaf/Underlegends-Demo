draw_set_color(c_white);
//draw_set_font(fnt_intro);
draw_set_font(fnt_in_game_menu_name_rus);
//if global.menu_type == 0 {
	draw_sprite(instruction, 0, 0, 0);
//}
if reset == true {
	if global.enough != 0 {
		draw_text_color(200, 320, confirm_text, c_red, c_red, c_red, c_red, 1);
	}
	else {
		draw_text(250, 320, confirm_text);
	}
	if global.language == "rus" {
		if (yes == true) {
			draw_text_color(230, 360, "Да", c_yellow, c_yellow, c_yellow, c_yellow,1);
			draw_text(400, 360, "Нет");
		}
		else {
			draw_text(230, 360, "Да" );
			draw_text_color(400, 360, "Нет", c_yellow, c_yellow, c_yellow, c_yellow,1);
		}
	}
	else {
		if (yes == true) {
			draw_text_color(230, 360, "Yes", c_yellow, c_yellow, c_yellow, c_yellow,1);
			draw_text(400, 360, "No");
		}
		else {
			draw_text(230, 360, "Yes" );
			draw_text_color(400, 360, "No", c_yellow, c_yellow, c_yellow, c_yellow,1);
		}
	}
}
