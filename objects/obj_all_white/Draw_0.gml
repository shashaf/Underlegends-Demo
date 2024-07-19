draw_self();
draw_set_font(fnt_in_game_menu_name_rus);

if rejected == true and room != rm_reject2 {
	if error == false {
		draw_text_color(200, 360, loading_text, c_black, c_black, c_black, c_black, text_alpha);
		draw_rectangle_color(200, loading_y, bar_max_width, loading_y + bar_height, c_black, c_black, c_black, c_black, true);
		draw_rectangle_color(201, loading_y + 1, bar_max_width - 1, loading_y + bar_height - 1, c_black, c_black, c_black, c_black, true);
		draw_rectangle_color(202, loading_y + 2, bar_max_width - 2, loading_y + bar_height - 2, c_black, c_black, c_black, c_black, true);
		draw_rectangle_color(203, loading_y + 3, bar_max_width - 3, loading_y + bar_height - 3, c_black, c_black, c_black, c_black, true);
		draw_rectangle_color(204, loading_y + 4, bar_width, loading_y + bar_height - 4, c_green, c_green, c_green, c_green, false);
	}
	else {
		if global.language == "rus" {
			draw_text_color(200, 360, "Загрузка: Отвергнута", c_red, c_red, c_red, c_red, 1);
		}
		else {
			draw_text_color(200, 360, "Loading: Rejected", c_red, c_red, c_red, c_red, 1);
		}
	}
}