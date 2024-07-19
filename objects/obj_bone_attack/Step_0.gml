/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if room = rm_battle_test {
	//if (x < obj_attack_test.x or x > obj_attack_test.border_right + 5) and disappear == false {
	if (x < obj_attack_test.x and hspeed < 0) or (x > obj_attack_test.border_right + 5 and hspeed > 0) and disappear == false {
		disappear = true;
		alarm[0] = 1;
		//visible = false;
	}
	else {
		//visible = true;
	}
}
if room = rm_battle {
	//if (x < obj_attack_test.x or x > obj_attack_test.border_right + 5) and disappear == false {
	if (x < obj_battle_manager.x and hspeed < 0) or (x > obj_battle_manager.border_right + 5 and hspeed > 0) and disappear == false {
		disappear = true;
		alarm[0] = 1;
	}
}
