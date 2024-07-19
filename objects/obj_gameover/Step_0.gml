if can_draw == true {
	if characters < string_length(current_text) { //если фраза не вся на экране
		characters += increase;
		text_to_draw = string_copy(current_text, 0, characters);
	
		var _character = string_char_at(current_text, characters);
			
		if (_character != " ") {
			//audio_play_sound(snd_text, 20, 0);
			audio_play_sound(voice, 20, 0);
		}
			
		if _character == "," {
			increase = 0.2;
		}
		else {
			increase = 0.5;
		}
		if enter_z_check() {
			characters = string_length(current_text);
			text_to_draw = string_copy(current_text, 0, characters);
		}
	}
	else {
		if message_current != message_end and next_message == false {
			next_message = true;
			alarm[0] = 60;
		}
		else if message_current == message_end and next_message == false {
			if enter_z_check() or !audio_is_playing(mus_gameover) {
				next_message = true;
				alarm[1] = 10;
			}
		}
	}
}