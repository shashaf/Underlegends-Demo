/// @description Кости только справа налево

//if bones_count < 
//bones_count++;
//var _spawn_y = choose(obj_attack_test.y + obj_attack_test.border_height, obj_attack_test.y);
if current_bone < 3 {
	current_bone++;
}
else {
	current_bone = 0;
}

var _spawn_y = choose(obj_battle_manager.y + obj_battle_manager.border_height, obj_battle_manager.y);
if previous_y[2] == previous_y[1] and previous_y[0] == previous_y[1] { //чтобы не было 3 подряд одинаковых
	if _spawn_y == obj_battle_manager.y + obj_battle_manager.border_height {
		_spawn_y = obj_battle_manager.y; 
	}
	else if _spawn_y == obj_battle_manager.y {
		_spawn_y = obj_battle_manager.y + obj_battle_manager.border_height;
	}
}
//if _spawn_y == obj_battle_manager.y {
	//bone.y += bone.sprite_height;
	//_spawn_y += obj_bone_attack.sprite_height;
//}
//bone = instance_create_depth(obj_battle_manager.border_right + 50, _spawn_y, depth, obj_bone_attack)
instance_create_depth(obj_battle_manager.border_right + 50, _spawn_y, depth, obj_bone_attack)


previous_y[current_bone] = _spawn_y;
alarm[1] = 25;
