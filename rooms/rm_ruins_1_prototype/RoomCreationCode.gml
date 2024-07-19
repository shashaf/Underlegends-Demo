if instance_exists(obj_save) {
	if global.language == "rus"{
		obj_save.room_name = "Руины - Комната 2";
		obj_save.messages[1] = "* Вам нравится эта большая\n  дверь в конце комнаты."
	}
	else {
		obj_save.room_name = "Ruins - Second";
		obj_save.messages[1] = "* You like this big door\n  in the end of the room."
	}
	global.menu_type = 1;
	if instance_exists(obj_music) {
		//if global.player_lv >= 4 {
		if global.enough == 1 {
			obj_music.area_music = muz;
		}
		else {
			obj_music.area_music = mus_ruins;
		}
	}
}