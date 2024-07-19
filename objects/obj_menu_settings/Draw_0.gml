draw_self();
draw_set_font(font);
//draw_text_color(15, room_height - 40, string(key_x) + " " + string(key_y), c_yellow, c_yellow, c_yellow, c_yellow, 1);
if setting_key == true {
	draw_text_color(key_x, key_y, "...", c_yellow, c_yellow, c_yellow, c_yellow, 1);
}
if global.left != vk_left and can_draw_key[0] == true {
	draw_text(key_x, 146, left);
}
if global.right != vk_right and can_draw_key[1] == true {
	draw_text(key_x, 146 + 32*1, right);
}
if global.up != vk_up and can_draw_key[2] == true {
	draw_text(key_x, 146 + 32*2, up);
}
if global.down != vk_down and can_draw_key[3] == true {
	draw_text(key_x, 146 + 32*3, down);
}
if global.enter != vk_enter and can_draw_key[4] == true {
	draw_text(key_x, 146 + 32*4, enter);
}
if global.shift != vk_shift and can_draw_key[5] == true {
	draw_text(key_x, 146 + 32*5, shift);
}
if global.ctrl != vk_control  and can_draw_key[6] == true {
	draw_text(key_x, 146 + 32*6, ctrl);
}