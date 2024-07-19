// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enter_z_hold_check(){
	if keyboard_check(ord("Z")) or keyboard_check(vk_enter) or keyboard_check(vk_space) {
		return true;
	}
	else {
		return false;
	}
}