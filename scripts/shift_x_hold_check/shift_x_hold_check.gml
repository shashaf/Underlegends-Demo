// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function shift_x_hold_check(){
	if keyboard_check(ord("X")) or keyboard_check(vk_shift) {
		return true;
	}
	else {
		return false;
	}
}