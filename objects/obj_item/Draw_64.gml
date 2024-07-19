draw_set_font(fnt_dialogue_rus);
if can_draw == true {
	draw_sprite_ext(box_sprite, 0, 65, box_y, 1, 1, 0 ,c_white, 1); //рисуем диалог-бокс
	draw_text_ext(80, box_y + 15, text_to_draw, 30, 600); //выводим текст
}