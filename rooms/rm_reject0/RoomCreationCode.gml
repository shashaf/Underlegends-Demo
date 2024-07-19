if instance_exists(obj_save) {
	obj_save.room_name = "???";
	obj_save.messages[1] = "* You don't know this place,\n  but you feel like you have\n  to be here for something.";
	if global.language == "rus" {
		obj_save.messages[1] = "* Вам незнакомо это место, но\n  вы чувствуете, что должны\n  быть здесь для чего-то.";
	}
	//global.room_label = "Ruins - First";
	global.menu_type = 0;
	if instance_exists(obj_music) {
		if global.enough == 1 {
			obj_music.area_music = muz;
		}
		else {
			obj_music.area_music = snd_silence;
		}
	}
}
