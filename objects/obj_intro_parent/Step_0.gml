/*if keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("X")) 
or keyboard_check_pressed(ord("C"))*/
if enter_z_check() or shift_x_check() or ctrl_c_check() {
	audio_sound_gain(mus_intro, 0, 2000)
	can_draw = true;
	instance_destroy(obj_textbox_intro);
}

if can_draw == true && alpha < 1 {
	alpha += 0.05;
}