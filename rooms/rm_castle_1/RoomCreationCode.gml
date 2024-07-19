if instance_exists(obj_save) {
	if global.language == "rus" {
		obj_save.room_name = "Замок - Вход";
		obj_save.messages[1] = "* Дружелюбие того стражника\n  воодушевило Вас.";
	}
	else {
		obj_save.room_name = "Castle - Entrance";
		obj_save.messages[1] = "* For some reason this place\n  seems familiar to you.";
	}
}

global.menu_type = 0;
if instance_exists(obj_music) {
	//if global.player_lv >= 4 {
	if global.enough == 1 {
		obj_music.area_music = muz;
	}
	else {
		audio_stop_sound(obj_music.area_music);
		obj_music.area_music = mus_castle;
	}
}

