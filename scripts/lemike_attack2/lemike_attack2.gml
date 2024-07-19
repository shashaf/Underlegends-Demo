// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function lemike_attack2(){
	randomize();
	//var spawn_x = choose(obj_soul_battle.x - 70, obj_soul_battle.x + 70);
	var _spawn_x1 = obj_battle_manager.border_right + obj_battle_manager.border_width;
	var _spawn_x2 = obj_battle_manager.border_right + obj_battle_manager.border_width + 200;
	var _spawn_x3 = obj_battle_manager.border_right + obj_battle_manager.border_width + 400;
	//var spawn_y = choose(obj_soul_battle.y - 35, obj_soul_battle.y + 35);
	var _spawn_y1 = random_range(obj_soul_battle.y - 35, obj_soul_battle.y + 35);
	var _spawn_y2 = random_range(obj_soul_battle.y - 35, obj_soul_battle.y + 35);
	var _spawn_y3 = random_range(obj_soul_battle.y - 35, obj_soul_battle.y + 35);

	instance_create_depth(_spawn_x1, _spawn_y1, obj_soul_battle.depth, obj_tumbleweed_smaller);
	instance_create_depth(_spawn_x2, _spawn_y2, obj_soul_battle.depth, obj_tumbleweed_smaller);
	instance_create_depth(_spawn_x3, _spawn_y3, obj_soul_battle.depth, obj_tumbleweed_smaller);
}