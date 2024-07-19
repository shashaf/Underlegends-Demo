/// @description Баг с застреванием

if image_alpha < 1 {
	image_alpha += 0.05;
	obj_patience.image_alpha -= 0.05;
	alarm[1] = 1;
}
else {
	if room == rm_reject2 {
		audio_sound_pitch(snd_transfer, 1.1);
		if !audio_is_playing(snd_transfer) {
			audio_play_sound(snd_transfer, 1, 0);
		}
		teleport_time = 120;
	}
	if instance_exists(obj_struggle_spawn) {
		obj_patience.x = obj_struggle_spawn.x;
		obj_patience.y = obj_struggle_spawn.y;
	}
	else if instance_exists(obj_spawn) {
		obj_patience.x = obj_spawn.x;
		obj_patience.y = obj_spawn.y;
	}
	else {
		obj_patience.x = room_width/2;
		obj_patience.y = room_height/2;
	}
	x = global.camera_x;
	y = global.camera_y;
	instance_destroy(obj_struggle_bug);
	obj_patience.struggle = 0;
	obj_patience.in_menu = false;
	if instance_exists(obj_in_game_menu) {
		instance_destroy(obj_in_game_menu);
	}
	obj_patience.reading = false;
	obj_patience.in_cutscene = false;
	obj_patience.in_battle = false;
	obj_patience.taking_item = false;
	alarm[2] = teleport_time;
}



