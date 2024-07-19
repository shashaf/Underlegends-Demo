if !audio_is_playing(mus_settings) {
	audio_play_sound(mus_settings, 0, 1);
}
image_speed = 0;
image_index = 0;
current_option = 1;
lang = false;
exit_buttons = false;
setting_key = false;
if global.language == "rus" {
	sprite_index = spr_settings_screen_rus;
}
