if current_option == 1 {
	current_option = 9;
	exit_buttons = true;
	image_index = 9;
}
else if current_option > 1 {
	current_option--;
	image_index = current_option - 1;
}
if current_option == 9 {
	lang = false;
	exit_buttons = true;
}
if current_option == 8 {
	lang = true;
	exit_buttons = false;
}
if current_option < 8 {
	key_y = 146 + (32 * current_option) - 32;
}
audio_play_sound(snd_menu_move, 1, 0);