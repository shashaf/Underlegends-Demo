// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function lemike_revolver3(){
	instance_create_depth(obj_battle_manager.x + 65, obj_battle_manager.y + 65, obj_soul_battle.depth, obj_revolver);
	obj_revolver.difficulty = 3;
}