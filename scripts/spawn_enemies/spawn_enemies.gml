// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_enemies(_battleID) {
	switch (_battleID) {
		case 0:
			instance_create_depth(318, 152, 0, obj_gate_guard);
			obj_battle_manager.enemies[0] = obj_gate_guard;
			obj_battle_manager.earned_gold = 0;
			break;
		case 1:
			instance_create_depth(318, 172, 0, obj_froggit_white);
			obj_battle_manager.enemies[0] = obj_froggit_white;
			obj_battle_manager.earned_gold = 2;
			break;
		case 2:
			instance_create_depth(318, 172, 0, obj_froggit_yellow);
			obj_battle_manager.enemies[0] = obj_froggit_yellow;
			obj_battle_manager.earned_gold = 2;
			break;
		case 3:
			instance_create_depth(318, 172, 0, obj_froggit_green);
			obj_battle_manager.enemies[0] = obj_froggit_green;
			obj_battle_manager.earned_gold = 2;
			break;
		case 4:
			instance_create_depth(218, 172, 0, obj_froggit_white);
			instance_create_depth(418, 172, 0, obj_froggit_yellow);
			obj_battle_manager.enemies[0] = obj_froggit_white;
			obj_battle_manager.enemies[1] = obj_froggit_yellow;
			obj_battle_manager.earned_gold = 4;
			break;
		case 5:
			instance_create_depth(218, 172, 0, obj_froggit_white);
			instance_create_depth(418, 172, 0, obj_froggit_green);
			obj_battle_manager.enemies[0] = obj_froggit_white;
			obj_battle_manager.enemies[1] = obj_froggit_green;
			obj_battle_manager.earned_gold = 4;
			break;
		case 6:
			instance_create_depth(218, 172, 0, obj_froggit_yellow);
			instance_create_depth(418, 172, 0, obj_froggit_green);
			obj_battle_manager.enemies[0] = obj_froggit_yellow;
			obj_battle_manager.enemies[1] = obj_froggit_green;
			obj_battle_manager.earned_gold = 4;
			break;
		case 7:
			instance_create_depth(118, 172, 0, obj_froggit_white);
			instance_create_depth(318, 172, 0, obj_froggit_yellow);
			instance_create_depth(518, 172, 0, obj_froggit_green);
			obj_battle_manager.enemies[0] = obj_froggit_white;
			obj_battle_manager.enemies[1] = obj_froggit_yellow;
			obj_battle_manager.enemies[2] = obj_froggit_green;
			obj_battle_manager.earned_gold = 6;
			break;
		case 24:
			instance_create_depth(318, 172 - 37, 0, obj_lemike);
			obj_battle_manager.enemies[0] = obj_lemike;
			obj_battle_manager.earned_gold = 24;
			break;
		default:
			//instance_create_depth(318, 172, 0, obj_froggitWhite);
			//obj_battleManager.enemies[0] = obj_froggitWhite;
			//obj_battleManager.earned_gold = 2;
			obj_battle_manager.battle_state = "victory";
			break;
	}
}