
//draw_set_font(fnt_dialog);
draw_set_font(fnt_dialogue_rus);
draw_set_color(c_white);
if can_draw == true {
	draw_sprite_ext(box_sprite, 0, 65, box_y, 1, 1, 0 ,c_white, 1); //рисуем диалог-бокс
	draw_text_ext(80, box_y + 15, text_to_draw, 30, 600); //выводим текст
	if (characters >= phrase_length) {
		if (yes == true) {
			if global.language == "rus" {
				draw_text_ext_color(300, box_y + 15, "\n\n Да", 30, 600, c_yellow, c_yellow, c_yellow, c_yellow, 1);
				draw_text_ext(450, box_y + 15, "\n\n Нет", 30, 600);
			}
			else {
				draw_text_ext_color(300, box_y + 15, "\n\n Yes", 30, 600, c_yellow, c_yellow, c_yellow, c_yellow, 1);
				draw_text_ext(450, box_y + 15, "\n\n No", 30, 600);
			}
		}
		else {
			if global.language == "rus" {
				draw_text_ext(300, box_y + 15, "\n\n Да", 30, 600);
				draw_text_ext_color(450, box_y + 15, "\n\n Нет", 30, 600, c_yellow, c_yellow, c_yellow, c_yellow, 1);
			}
			else {
				draw_text_ext(300, box_y + 15, "\n\n Yes", 30, 600);
				draw_text_ext_color(450, box_y + 15, "\n\n No", 30, 600, c_yellow, c_yellow, c_yellow, c_yellow, 1);
			}
		}
	}
}



