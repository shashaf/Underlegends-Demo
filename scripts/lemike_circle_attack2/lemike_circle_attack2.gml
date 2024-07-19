// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function lemike_circle_attack2() {
	var _difficulty = 2;
	instance_create_depth(obj_battle_manager.x, obj_battle_manager.y, obj_soul_battle.depth, obj_lemike_attack_spawner);
	switch (_difficulty) {
		case 1:
			obj_lemike_attack_spawner.alarm[0] = 1;
			break;
		case 2:
			obj_lemike_attack_spawner.alarm[1] = 1;
			break;
		case 3:
			obj_lemike_attack_spawner.alarm[2] = 1;
			break;
		default:
			obj_lemike_attack_spawner.alarm[0] = 1;
			break;
	}
}