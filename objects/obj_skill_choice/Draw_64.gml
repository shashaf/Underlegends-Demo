draw_set_font(fnt_skill_choice);
if global.language == "rus" {
	draw_set_font(fnt_skill_choice_rus);
}
draw_set_color(c_white);
//draw_text(10, 10, string(third_option_x) + " " + string(third_option_y))
//draw_text_color(confirm_x, buttons_y, confirm_button, c_yellow, c_yellow, c_yellow, c_yellow, 1);
//draw_text_color(confirm_x, buttons_y, choose_text, c_yellow, c_yellow, c_yellow, c_yellow, 1);

//draw_text(back_x, buttons_y, back_button);
if confirm == false {
	draw_text(question_x, question_y, question_text);

	switch (current_option) {
		case 1:
			draw_text(first_option_x, first_option_y, first_option_text);
			draw_text(first_skill_x, first_skill_y, first_skill_text);
			break;
		case 2:
			symbols = 1;
			width = 0
			row = 0;

			while (symbols <= string_length(second_skill_text)) {
				//var symbol = string_char_at(text, symbols);
				while (string_char_at(second_skill_text, symbols) == "`") {
					symbols++;
					switch(string_char_at(second_skill_text, symbols)) {
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
							draw_set_color(c_aqua);
							break;
					}
					symbols++;
				}
				draw_text(second_skill_x + width, second_skill_y + row * text_height, string_char_at(second_skill_text, symbols));
				width += string_width(string_char_at(second_skill_text, symbols));
				symbols++;
			}
			draw_text(second_option_x, second_option_y, second_option_text);
			break;
		case 3:
			draw_text(third_option_x, third_option_y, third_option_text);
			draw_text(third_skill_x, third_skill_y, third_skill_text);
			break;
		default:
			draw_text(third_option_x, third_option_y, third_option_text);
			break;
	}
		draw_text(confirm_x, buttons_y, choose_text);
		draw_text(confirm_x, buttons_y + 32, back_text);
}
else {
	draw_text(question_x, question_y, confirm_question);
	draw_text(confirm_x, buttons_y, yes);
	draw_text(confirm_x, buttons_y + 32, no);
}