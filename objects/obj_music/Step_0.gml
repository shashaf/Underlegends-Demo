if room == rm_intro {
	//if !instance_exists(obj_title) && (global.music) && !instance_exists(obj_storypan) {
	if !instance_exists(obj_title) && !instance_exists(obj_storypan) {
		//if !(audio_is_playing(mus_intro))
			//audio_play_sound(mus_intro, 10, 0);
	}
	else {
		audio_sound_gain(mus_intro, 0, 500)
	}
}

if area_music != noone {
	paused = audio_is_paused(area_music);
}