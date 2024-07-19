// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function lemike_attack1(){
	randomize();
	//var spawnX = choose(obj_soul_battle.x - 70, obj_soul_battle.x + 70);
	var _spawn_x = obj_battle_manager.border_right + obj_battle_manager.border_width;
	var _spawn_y = choose(obj_soul_battle.y - 35, obj_soul_battle.y + 35);
	//var spawnY = random_range(obj_battleManager.y, obj_battleManager.y + obj_battleManager.border_height);

	instance_create_depth(_spawn_x, _spawn_y, obj_soul_battle.depth, obj_tumbleweed);
}