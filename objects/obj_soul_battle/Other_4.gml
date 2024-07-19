if room == rm_battle {
	audio_sound_gain(global.battle_music, 1, 1);
	if obj_patience.battle_type != 0 {
		x = 49;
		y = 454;
		if !audio_is_playing(mus_remix) {
			audio_play_sound(global.battle_music, 10, 1);
		}
	}
	else {
		x = obj_battle_manager.new_border_left + obj_battle_manager.new_border_width/2;
		y = obj_battle_manager.y + obj_battle_manager.border_height/2;
	}
}