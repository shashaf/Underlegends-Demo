draw_set_font(dialogue_font);
if dialogue_current == 0 {
	draw_set_font(fnt_dialogue_rus);
}
draw_set_color(c_white);
if in_dialogue == true {
	if dialogue_current == 0 {
		if room == rm_reject2 {
			draw_sprite_ext(box_sprite, 0, 65, box_y, 1, 1, 0 ,c_white, 1);
		}
		else {
			draw_sprite_ext(spr_dialogue_box2, 0, 65, box_y, 1, 1, 0 ,c_white, 1);
		}
	}
	else { 
		draw_sprite_ext(box_sprite, 0, 65, box_y, 1, 1, 0 ,c_white, 1);
	}
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
		if dialogue_current == 0 and room != rm_reject2 {
			draw_text(text_x + width, box_y + 15 + row * text_height, string_char_at(dialogue_draw, symbols));
		}
		else {
			draw_text(text_x_with_avatar + width, box_y + 15 + row * text_height, string_char_at(dialogue_draw, symbols));
		}
		width += string_width(string_char_at(dialogue_draw, symbols));
		symbols++;
	}
}