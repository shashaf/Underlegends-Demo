if (characters < message_length) {
	characters += increase;
	message_draw = string_copy(intro_message[message_current], 0, characters);
	
	var _character = (string_char_at(intro_message[message_current], characters));
	
	next_m = false;
	ok = false;
	
	if (text == 1) && (_character != " ") {
		text = 0;
		audio_play_sound(snd_text, 20, 0);
	}
	
	if text < 1 {
		text += increase;
	}
}
else {
	if alarm[0] = -1 && ok == false {
		alarm[0] = 60;
		ok = true;
	}
	if next_m = true {
		if (message_current < message_end) {
			next_m = false;
			message_current += 1;
			if global.language != "rus" {
				if message_current < 3 or message_current == 7 {
					x = 160;
				}
				else {
					x = 120;
				}
			}
			message_length = string_length(intro_message[message_current]);
			characters = 0;
			message_draw = "";
		}
		else {
			need_title = false;
			instance_destroy();
		}
	}
}

if message_current = 7 && characters > 40 {
	increase = 0.1;
}
else {
	increase = 0.5;
}