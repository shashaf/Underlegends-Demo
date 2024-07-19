if current_option == 1 and option2 != "" {
	current_option = 2;
	audio_play_sound(snd_menu_move, 5, 0);
}
else if current_option == 2 {
	current_option = 1;
	audio_play_sound(snd_menu_move, 5, 0);
}
