if instance_exists(obj_save) {
	if global.language == "rus" {
		obj_save.room_name = "Руины - Комната 1";
		obj_save.messages[1] = "* По какой-то причине\n  это место вам знакомо."
	}
	else {
		obj_save.room_name = "Ruins - First";
		obj_save.messages[1] = "* For some reason this place\n  seems familiar to you."
	}
	//global.room_label = "Ruins - First";
	global.menu_type = 0;
	if instance_exists(obj_music) {
		if global.enough == 1 {
			obj_music.area_music = muz;
			//obj_music.area_music = mus_broken;
			//audio_sound_pitch(obj_music.area_music, 0.1);
		}
	}
}
