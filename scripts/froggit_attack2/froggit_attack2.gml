// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function froggit_attack2() {
	randomize();
	var _spawn_x = choose(obj_soul_battle.x - 70, obj_soul_battle.x + 70);
	var _spawn_y = choose(obj_soul_battle.y - 35, obj_soul_battle.y + 35);
	instance_create_depth(_spawn_x, _spawn_y, obj_soul_battle.depth, obj_atk_froggit_bullet);
}