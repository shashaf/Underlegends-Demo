draw_set_font(fnt_dialogue_rus);
draw_text(65 + 15 + 30, box_y_check() + 40, option1);
draw_text(65 + 15 + 225 + 30, box_y_check() + 40, option2);

if current_option == 1 {
	draw_sprite(spr_menu_soul, 0, 45 + 15 + 30 , box_y_check() + 45)
}
else if current_option == 2 {
	draw_sprite(spr_menu_soul, 0, 45 + 15 + 30 + 225, box_y_check() + 45)
}