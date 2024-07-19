// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function die(){
	audio_stop_sound(global.battle_music);
	instance_create_depth(0, 0, -9999, obj_all_dark);
	obj_soul_battle.depth = obj_all_dark.depth - 2;
	obj_battle_manager.battle_state = "dead";
	obj_soul_battle.alarm[9] = 60;
}