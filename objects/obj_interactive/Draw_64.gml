draw_set_font(dialogue_font);
if in_dialogue == true {
	draw_sprite_ext(box_sprite, 0, 65, box_y, 1, 1, 0 ,c_white, 1);
	//draw_sprite_ext(dialogue_sprite, 0, 90, box_y + 25, 1, 1, 0, c_white, 1);
	//sprite_set_speed(dialogue_sprite, 6, spritespeed_framespersecond);
	if global.enough != 0 {
		draw_set_color(c_red);
	}
	draw_text_ext(80, box_y + 15, dialogue_draw, 30, 600);
	//draw_text(text_x, text_y, dialogue_draw);
}