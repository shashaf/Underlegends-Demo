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

