if instance_exists(obj_battle_manager) and obj_battle_manager.blue_skill == true {
	blue_mod = true;
	var _scale = image_yscale;
	sprite_index = blue_sprite;
	image_yscale = _scale;
}
else if always_blue == false {
	blue_mod = false;
	var _scale = image_yscale;
	sprite_index = default_sprite;
	image_yscale = _scale;
}
if room = rm_battle {
	//if (x < obj_attack_test.x or x > obj_attack_test.border_right + 5) and disappear == false {
	if (x < obj_battle_manager.x and hspeed < 0) or (x > obj_battle_manager.border_right + 5 and hspeed > 0) and disappear == false {
		disappear = true;
		alarm[0] = 1;
	}
}