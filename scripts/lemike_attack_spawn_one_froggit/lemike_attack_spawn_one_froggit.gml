// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function lemike_attack_spawn_one_froggit(){
	instance_create_depth(118, 172, 10, obj_froggit_white);
	obj_battle_manager.enemies[1] = obj_froggit_white;
}