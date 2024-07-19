if room == rm_intro {
	//global.music = true;
	audio_stop_sound(mus_intro);
	audio_sound_gain(mus_intro, 1, 0);
}
need_music = false;
area_music = snd_silence;
paused = -1

