if instance_exists(obj_save) {
	obj_save.room_name = "Sheriff's corridor";
	obj_save.messages[1] = "* Somehow you feel your\n  fighting spirit rising.";
	if global.language == "rus" {
		obj_save.room_name = "Коридор шерифа";
		obj_save.messages[1] = "* Почему-то вы чувствуете,\n  как ваш боевой дух растёт.";
	}
	//global.menu_type = 1;
}
if instance_exists(obj_music) {
	//if global.player_lv >= 4 {
	if global.enough == 1 {
		obj_music.area_music = muz;
	}
	else {
		obj_music.area_music = mus_sheriff_area;
	}
}