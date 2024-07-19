if image_index != 4 {
	audio_play_sound(snd_menu_move, 10, 0);
	switch (image_index) {
		case 0:
			image_index = 1;
			break;
		case 1:
			image_index = 0;
			break;
		case 2:
			image_index = 3;
			break;
		case 3:
			image_index = 2;
			break;
	}
}