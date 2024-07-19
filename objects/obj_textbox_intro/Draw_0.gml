draw_set_color(c_white);
if global.language == "rus" {
	draw_set_font(fnt_intro_rus);
}
else {
	draw_set_font(fnt_intro);
}
draw_text(x, y, message_draw);