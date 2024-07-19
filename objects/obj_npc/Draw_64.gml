draw_set_font(dialogue_font);
draw_set_color(c_white);
if in_dialogue == true {
	draw_sprite_ext(spr_dialogue_box3, 0, 65, box_y, 1, 1, 0 ,c_white, 1);
	//draw_sprite_ext(dialogue_sprite, 0, 90, box_y + 25, 1, 1, 0, c_white, 1);
	//sprite_set_speed(dialogue_sprite, 6, spritespeed_framespersecond);
	
	//draw_text_ext(170, box_y + 15, dialogue_draw, 30, 600);
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
			}
			symbols++;
		}
		draw_text(170 + width, box_y + 15 + row * text_height, string_char_at(dialogue_draw, symbols));
		width += string_width(string_char_at(dialogue_draw, symbols));
		symbols++;
	}
}