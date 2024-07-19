/// @description Затемнение экрана
// You can write your code in this editor
instance_create_depth(global.camera_x, global.camera_y, -9999, obj_all_dark);
audio_play_sound(snd_soul_noise, 10, 0);
visible = false;
alarm[3] = 15;



