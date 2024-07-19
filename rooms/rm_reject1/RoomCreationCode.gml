if instance_exists(obj_save) {
	obj_save.room_name = "Rejected Dim.";
	obj_save.messages[1] = "* You should go through this\n  door at the end of the room."
	if global.language == "rus" {
		obj_save.room_name = "Изм. Отвергнутых";
		obj_save.messages[1] = "* Вам следует пройти в эту\n  дверь в конце комнаты."
	}
	//global.menu_type = 1;
	if instance_exists(obj_music) {
		//if global.player_lv >= 4 {
		if global.enough == 1 {
			obj_music.area_music = muz;
		}
		else {
			obj_music.area_music = snd_silence;
		}
	}
}