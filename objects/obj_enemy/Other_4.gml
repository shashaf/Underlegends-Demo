/// @description Insert description here
// You can write your code in this editor
if room == rm_battle {
	dialogue_x = obj_battle_manager.enemies[0].x - 60;
	dialogue_y = obj_battle_manager.enemies[0].y - 100;
	visible = true;
	if instance_exists(obj_battle_manager) {
		if can_be_spared == true {
			obj_battle_manager.can_spare = true;
		}
		if enemy_current_hp < 0 {
			enemy_current_hp = 0
		}
	}
}
else {
	visible = false;
}



