if lang == true {
	audio_play_sound(snd_menu_move, 1, 0);
	if image_index == 7 {
		image_index = 8;
	}
	else if image_index == 8 {
		image_index = 7;
	} 
}
if exit_buttons == true {
	audio_play_sound(snd_menu_move, 1, 0);
	if image_index == 9 {
		image_index = 10;
	}
	else if image_index == 10 {
		image_index = 9;
	} 
}