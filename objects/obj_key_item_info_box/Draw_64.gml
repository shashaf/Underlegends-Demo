//draw_text(10, 10, string(action_type) + " " + string(item_number));
draw_set_font(fnt_dialogue_rus);
draw_set_color(c_white);
symbols = 1;
width = 0
row = 0;

	while (symbols <= string_length(dialogue[dialogue_current])) {
		//var symbol = string_char_at(text, symbols);
		while (string_char_at(dialogue_draw, symbols) == "`") {
			symbols++;
			switch(string_char_at(dialogue_draw, symbols)) {
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
				case "w":
					draw_set_color(c_white);
					break;
				case "r":
					draw_set_color(c_red);
					break;
				case "b":
					draw_set_color(c_blue);
					break;
			}
			symbols++;
		}
		draw_text(text_x + width, box_y + 15 + row * text_height, string_char_at(dialogue_draw, symbols));
		width += string_width(string_char_at(dialogue_draw, symbols));
		symbols++;
	}
