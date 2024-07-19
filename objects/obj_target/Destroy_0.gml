/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_weapon) {
	instance_destroy(obj_weapon);
}
with (obj_battle_manager) {
	var _check_victory = false;
	if (enemies[selected_enemy].enemy_current_hp <= 0) {
		enemies[selected_enemy].enemy_current_hp = 0;
		_check_victory = kill_enemy();
		if _check_victory = false {
			alarm[2] = 1;
		}
	}
	else if obj_battle_manager.damage != "MISS" {
		enemies[selected_enemy].shaking = true;
	}
	else {
		obj_battle_manager.alarm[2] = 60;
	}
	
}


