/// @description Mute the music
// You can write your code in this editor
if global.debug == true {
	if audio_is_playing(mus_first_miniboss) {
		audio_stop_sound(mus_first_miniboss);
	}
	else {
		audio_play_sound(mus_first_miniboss, 10, 1);
	}
}