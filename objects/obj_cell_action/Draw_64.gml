if messages_current == 0 {
	if global.language == "rus" {
		draw_set_font(fnt_dialogue_rus);
	}
	else {
		draw_set_font(fnt_dialogue);
	}
}
else {
	draw_set_font(font);
}

symbols = 1;
width = 0
row = 0;

while (symbols <= text_length) {
	
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
			case "r":
				draw_set_color(c_red);
				break;
			case "g":
				draw_set_color(c_green);
				break;
			case "w":
				draw_set_color(c_white);
				break;
			case "b":
				draw_set_color(c_black);
				break;
		}
		symbols++;
	}
	draw_text(text_x + width, box_y + 15 + row * text_height, string_char_at(text_to_draw, symbols));
	width += string_width(string_char_at(text_to_draw, symbols));
	symbols++;
} 