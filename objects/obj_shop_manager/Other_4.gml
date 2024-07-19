audio_stop_sound(mus_shop);
audio_sound_gain(mus_shop, 1, 1);
if !audio_is_playing(mus_shop) and !audio_is_playing(mus_remix) {
	audio_play_sound(mus_shop, 5, 1);
}

if global.enough != 0 {
	audio_sound_pitch(mus_shop, 0.7);
}
else {
	audio_sound_pitch(mus_shop, 0.97);
}