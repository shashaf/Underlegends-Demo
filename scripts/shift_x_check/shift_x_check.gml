// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function shift_x_check(){
	if keyboard_check_pressed(ord("X")) or keyboard_check_pressed(vk_shift) or keyboard_check_pressed(vk_escape) {
		return true;
	}
	else {
		return false;
	}
}