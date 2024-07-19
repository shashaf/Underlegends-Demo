/// @description Затухание
// You can write your code in this editor
can_draw = false;
audio_sound_gain(mus_gameover, 0, 2000);
if image_alpha > 0 {
	image_alpha -= 0.05;
	alarm[1] = 1;
}
else {
	alarm[2] = 30;
}



