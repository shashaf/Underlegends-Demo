if instance_exists(obj_save) {
	if global.language == "rus" {
		obj_save.room_name = "Руины - Комната 2";
		obj_save.messages[1] = "* По какой-то причине\n  это место вам знакомо.";
	}
	else {
		obj_save.room_name = "Ruins - Second";
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
		obj_music.area_music = mus_ruins;
	}
}

