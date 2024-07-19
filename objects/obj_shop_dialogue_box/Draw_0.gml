draw_self();
if global.language == "rus" {
	draw_set_font(fnt_in_game_menu_name_rus);
}
else {
	//draw_set_font(fnt_in_game_menu);
	draw_set_font(fnt_test);
}
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
