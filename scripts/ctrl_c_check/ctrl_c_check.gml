// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ctrl_c_check(){
	if keyboard_check_pressed(ord("C")) or keyboard_check_pressed(vk_control) {
		return true;
	}
	else {
		return false;
	}
}