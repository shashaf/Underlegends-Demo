// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enter_z_check() {
	if keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space) 
	{//or keyboard_check_pressed(global.enter){
		return true;
	}
	else {
		return false;
	}
}