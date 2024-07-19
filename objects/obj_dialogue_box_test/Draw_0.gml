draw_self();
draw_set_font(font);
draw_text_ext_transformed(text_x, text_y, dialogue_draw, 30, 600, 2, 2, 0);
draw_text(15, 15, string(mouse_x) + " " + string(mouse_y));