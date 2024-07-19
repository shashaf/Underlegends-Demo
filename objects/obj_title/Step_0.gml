//if keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("X")) or keyboard_check_pressed(ord("C")) {
if enter_z_check() or shift_x_check() or ctrl_c_check() {
	need_to_restart = false;
	room_goto(rm_menu);
}
if (image_alpha < 1 and visible = true) {
	image_alpha+=0.05;
}