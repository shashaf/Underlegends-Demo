/// @description Insert description here
// You can write your code in this editor

if pause_steps < 20 {
	pause_steps++;
}
else {
	with (obj_soul_battle) {
		if distance_to_point(obj_battle_manager.x + 65, obj_battle_manager.y + 24) > 0 {
			if distance_to_point(obj_battle_manager.x + 65, obj_battle_manager.y + 24) > 4 {
				move_towards_point(obj_battle_manager.x + 65, obj_battle_manager.y + 24, 4);
				x = round(x);
				y = round(y);
			}
			else {
				move_towards_point(obj_battle_manager.x + 65, obj_battle_manager.y + 24, 1);
				x = round(x);
				y = round(y);
			}
		}
		else { //душу "зарядили"
			x = obj_battle_manager.x + 65;
			y = obj_battle_manager.y + 24;
			speed = 0;
			instance_create_depth(x, y, depth + 2, obj_soul_jail);
			if other.reloaded == false {
				other.reloaded = true;
				lemike_reload_revolver(other.difficulty);
			}
		}
	}
}





