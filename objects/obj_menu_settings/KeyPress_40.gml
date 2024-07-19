if current_option < 7 {
	current_option++;
	//key_y += 32;
	image_index = current_option - 1;
}
else if current_option == 7 {
	current_option++;
	//key_y += 32;
	lang = true;
	image_index = current_option - 1;
}
else if current_option == 8 {
	lang = false;
	exit_buttons = true;
	current_option++;
	//key_y += 32;
	image_index = 9;
}
else {
	exit_buttons = false;
	current_option = 1;
	//key_y = 146;
	image_index = 0
}
if current_option < 8 {
	key_y = 146 + (32 * current_option) - 32;
}
audio_play_sound(snd_menu_move, 1, 0);