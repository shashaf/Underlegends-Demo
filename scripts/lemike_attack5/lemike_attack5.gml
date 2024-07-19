// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function lemike_attack5(){
	randomize();
	//var _spawn_x = choose(obj_soul_battle.x - 70, obj_soul_battle.x + 70);
	var _spawn_x1 = obj_battle_manager.border_right + obj_battle_manager.border_width;
	var _spawn_x2 = obj_battle_manager.border_right + obj_battle_manager.border_width + 100;
	var _spawn_x3 = obj_battle_manager.border_right + obj_battle_manager.border_width + 200;
	var _spawn_x4 = obj_battle_manager.x - obj_battle_manager.border_width - 300;
	var _spawn_x5 = obj_battle_manager.border_right + obj_battle_manager.border_width + 400;
	var _spawn_x6 = obj_battle_manager.border_right + obj_battle_manager.border_width + 500;
	var _spawn_x7 = obj_battle_manager.x - obj_battle_manager.border_width - 600;
	var _spawn_x8 = obj_battle_manager.border_right + obj_battle_manager.border_width + 700;
	var _spawn_x9 = obj_battle_manager.border_right + obj_battle_manager.border_width + 800;
	var _spawn_x10 = obj_battle_manager.x - obj_battle_manager.border_width - 900;
	var _spawn_x11 = obj_battle_manager.border_right + obj_battle_manager.border_width + 1000;
	var _spawn_x12 = obj_battle_manager.border_right + obj_battle_manager.border_width + 1100;
	//var _spawn_y = choose(obj_soul_battle.y - 35, obj_soul_battle.y + 35);
	//var _spawn_y1 = random_range(obj_battleManager.y, obj_battleManager.y + obj_battleManager.border_height);
	var _spawn_y1 = random_range(obj_soul_battle.y - 35, obj_soul_battle.y + 35);
	var _spawn_y2 = random_range(obj_soul_battle.y - 35, obj_soul_battle.y + 35);
	var _spawn_y3 = random_range(obj_soul_battle.y - 35, obj_soul_battle.y + 35);
	var _spawn_y4 = random_range(obj_soul_battle.y - 35, obj_soul_battle.y + 35);
	var _spawn_y5 = random_range(obj_soul_battle.y - 35, obj_soul_battle.y + 35);
	var _spawn_y6 = random_range(obj_soul_battle.y - 35, obj_soul_battle.y + 35);


	instance_create_depth(_spawn_x1, _spawn_y1, obj_soul_battle.depth, obj_tumbleweed_small);
	instance_create_depth(_spawn_x2, _spawn_y2, obj_soul_battle.depth, obj_tumbleweed_small);
	instance_create_depth(_spawn_x3, _spawn_y3, obj_soul_battle.depth, obj_tumbleweed_small);
	instance_create_depth(_spawn_x4, _spawn_y4, obj_soul_battle.depth, obj_tumbleweed_small);
	instance_create_depth(_spawn_x5, _spawn_y5, obj_soul_battle.depth, obj_tumbleweed_small);
	instance_create_depth(_spawn_x6, _spawn_y6, obj_soul_battle.depth, obj_tumbleweed_small);
	instance_create_depth(_spawn_x7, _spawn_y1, obj_soul_battle.depth, obj_tumbleweed_small);
	instance_create_depth(_spawn_x8, _spawn_y2, obj_soul_battle.depth, obj_tumbleweed_small);
	instance_create_depth(_spawn_x9, _spawn_y3, obj_soul_battle.depth, obj_tumbleweed_small);
	instance_create_depth(_spawn_x10, _spawn_y4, obj_soul_battle.depth, obj_tumbleweed_small);
	instance_create_depth(_spawn_x11, _spawn_y5, obj_soul_battle.depth, obj_tumbleweed_small);
	instance_create_depth(_spawn_x12, _spawn_y6, obj_soul_battle.depth, obj_tumbleweed_small);
}