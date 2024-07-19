// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ctrl_c_hold_check(){
	if keyboard_check(ord("C")) or keyboard_check(vk_control) {
		return true;
	}
	else {
		return false;
	}
}