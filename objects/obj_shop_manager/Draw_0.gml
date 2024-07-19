draw_self();
//var _mouse_string = string(mouse_x) + " " + string(mouse_y);
//draw_text_color(50, 50, _mouse_string, c_green, c_green, c_green, c_green, 1);
if global.language == "rus" {
	draw_set_font(fnt_in_game_menu_name_rus);
}
else {
	//draw_set_font(fnt_in_game_menu);
	draw_set_font(fnt_test);
}
if !instance_exists(obj_shop_dialogue_box) {
	symbols = 1;
	width = 0
	row = 0;
	while (symbols <= string_length(dialogue)) {
	//var symbol = string_char_at(text, symbols);
		while (string_char_at(text_to_draw, symbols) == "`") {
			symbols++;
			switch(string_char_at(text_to_draw, symbols)) {
				case "n":
					row++;
					width = 0;
					break;
				case "y":
					draw_set_color(c_yellow);
					break;
				case "g":
					draw_set_color(c_green);
					break;
				case "r":
					draw_set_color(c_red);
					break;
				case "w":
					draw_set_color(c_white);
					break;
			}
			symbols++;
		}
		draw_text(dialogue_x + width, dialogue_y + row * text_height, string_char_at(text_to_draw, symbols));
		width += string_width(string_char_at(text_to_draw, symbols));
		symbols++;	
	}
}
if state == "sell" or state == "confirm_sell" {
	if sell_list_2 != "" {
		if dialogue == sell_list_1 {
			draw_sprite(spr_shop_page_arrow, 0, 360-16, 450-9);
		}
		else if dialogue == sell_list_2 {
			draw_sprite(spr_shop_page_arrow, 1, 360-16, 450-9);
		}
	}
}

