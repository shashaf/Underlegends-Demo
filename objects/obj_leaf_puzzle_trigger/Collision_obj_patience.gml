obj_patience.can_move = false;
if audio_is_playing(mus_strange_room) {
	image_index = 0;
	audio_stop_sound(mus_strange_room);	
	obj_patience.y_to_fall = y;
	if obj_patience.y_to_fall >= 410 {
		obj_patience.y_to_fall -= 30;
	}
	if touched == false {
		touched = true;
		audio_play_sound(snd_hurt, 0, 0);
		audio_play_sound(snd_fallen_down, 0, 0);
	}
}
