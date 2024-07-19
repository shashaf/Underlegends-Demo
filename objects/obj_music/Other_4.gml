/// @description Insert description here
// You can write your code in this editor

need_music = check_music(room);


if room == rm_intro {
	//global.music = true;
	audio_stop_sound(mus_intro);
	audio_sound_gain(mus_intro, 1, 0);
	audio_play_sound(mus_intro, 10, 0);
}

if audio_is_paused(area_music) { //если музыка на паузе (возвращение из битвы)
	if room != rm_battle {
		audio_resume_sound(area_music); //если музыка нужна, то снова играем
	}	
}
else if audio_is_playing(area_music) { //если мы заходим в комнату с играющей музыкой	
	if need_music == false { //если в новой комнате музыки быть не должно, останавливаем
		audio_stop_sound(area_music);
	}
}
else if !audio_is_playing(area_music) {
	if need_music == true { //если музыка нужна, то снова играем 
		audio_play_sound(area_music, 0, 1);
	}
}

