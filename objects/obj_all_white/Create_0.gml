image_alpha = 0;
alarm[0] = 1;
audio_play_sound(snd_revcrash, 10, 0);
rejected = false;
text_alpha = 0;
loading_progress = 0;
if rejected == true {
	alarm[3] = 60;
}
can_progress = false;
error = false;

bar_width = 200;
bar_max_width = 400;
bar_height = 20;
loading_text = "Loading: " + string(loading_progress) + "%";
if global.language == "rus" {	
	loading_text = "Загрузка: " + string(loading_progress) + "%";
}
loading_y = 400;
alarm[9] = 30;