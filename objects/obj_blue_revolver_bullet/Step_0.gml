if image_index == 21 {
	image_speed = 0;
}
if image_index == 3 and !audio_is_playing(snd_revolver_reload) {
	audio_play_sound(snd_revolver_reload, 2, 0);
}
if image_index == 16 and !audio_is_playing(snd_revolver_shot) {
	audio_play_sound(snd_revolver_shot, 2, 0);
}
