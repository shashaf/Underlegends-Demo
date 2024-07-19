if image_index <= 2 {
	image_index++;
	alarm[0] = 30;
}
else {
	obj_battle_manager.blue_skill = false;
	obj_battle_manager.has_blue_skill = false;
	alarm[2] = 1;
	//instance_destroy();
}