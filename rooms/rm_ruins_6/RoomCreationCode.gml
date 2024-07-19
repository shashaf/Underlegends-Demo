global.menu_type = 0;
if instance_exists(obj_music) {
	//if global.player_lv >= 4 {
	if global.enough == 1 {
		obj_music.area_music = muz;
	}
	else {
		audio_stop_sound(obj_music.area_music);
		obj_music.area_music = mus_strange_room;
	}
}

