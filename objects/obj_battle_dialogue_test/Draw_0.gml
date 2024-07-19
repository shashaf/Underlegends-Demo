
draw_set_color(c_white);
draw_self();
draw_set_color(c_black);
draw_set_font(fnt_battle_dialogue_gate_guard_rus);

symbols = 1;
width = 0;
row = 0;

while (symbols <= text_length) {
	
	while (string_char_at(text, symbols) == "`") {
		symbols++;
		switch(string_char_at(text, symbols)) {
			case "n":
				row++;
				width = 0;
				break;
			case "y":
				draw_set_color(c_orange);
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
			case "o":
				draw_set_color(c_orange);
				break;
			case "l":
				draw_set_color(#00AEF0);
				break;
		}
		symbols++;
	}
	//draw_text(x - sprite_width/2 + 5 + width, y - sprite_height + 3 + row * text_height, string_char_at(text, symbols));
	//if speaker == obj_lemike_test {
		if (sprite_index == spr_bubble_vertical) {
			//draw_text(x + 32 + width, y - sprite_height/2 + 10 + row * text_height, string_char_at(text, symbols));
			//draw_text_transformed(x + 32*2 + width, y - sprite_height/2 + 10*2 + row * text_height, string_char_at(text, symbols), 2, 2, 0);
		}
		//else {
			//draw_text(x + 32 + width, y - sprite_height/2 + 19 + row * text_height, string_char_at(text, symbols));
			//draw_text_transformed(x + 32*2 + width, y - sprite_height/2 + 19*2 + row * text_height, string_char_at(text, symbols), 2, 2, 0);
		//}
	//}
	else if sprite_index == spr_bubble_horizontal_long {
		draw_text_transformed(x + 70 + width, y - 40 + row * text_height, string_char_at(text, symbols), 2, 2, 0);
	}
	else if sprite_index == spr_bubble_horizontal {
		//draw_text_transformed(x - sprite_width/2 + 10*2 + width, y - sprite_height + 3*2 + row * text_height, string_char_at(text, symbols), 2, 2, 0);
	}
	//draw_text_transformed(text_x + width, text_y + row * text_height, string_char_at(text, symbols), 2, 2, 0);
	width += string_width(string_char_at(text, symbols))* 2;
	symbols++;
	//draw_text_transformed_color(10, 10, string(text_x - x) + " " + string(text_y - y), 2, 2, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
}


