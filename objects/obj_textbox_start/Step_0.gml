voice = snd_toriel_voice;
//if (message_current == 1 or message_current == 3 or message_current == 7 
//or message_current == 8 or message_current == 10 or message_current == 13 
//or message_current == 18 or message_current == 19) {
//	voice = snd_asriel_voice;
//}



for (var _i = 0; _i < 9; _i++) {
	if message_current == asriel_lines[_i]
		voice = snd_asriel_voice;
} 

if (message_current == 14 or message_current == 16 or message_current == 17) {
	voice = snd_text2;
}

if (characters < message_length) {
	characters += increase;
	message_draw = string_copy(intro_message[message_current], 0, characters);
	
	var _character = (string_char_at(intro_message[message_current], characters));
	
	if _character == "," {
	//if _character == "," {
		increase = 0.2;
	}
	else if _character == "?" or _character == "!" or _character == "." or _character == ":"{
		increase = 0.05;
	}
	else
		increase = 1;
	
	next_m = false;
	ok = false;
	
	if (text >= 2) && (_character != " ") && (_character != "?") && (_character != "!") && (_character != ",") && (_character != ":") {
		text = 0;
		audio_play_sound(voice, 0, 0);
	}
	
	if text < 2 {
		text += increase;
	}
}
else {
	if alarm[0] = -1 && ok == false {
		if (message_current == 6) {
			alarm[0] = 1;
			ok = true;
		}
		else {
			alarm[0] = 60;
			ok = true;
		}
	}
	if next_m = true {
		if (message_current < message_end) {
			next_m = false;
			message_current += 1;
			message_length = string_length(intro_message[message_current]);
			characters = 0;
			message_draw = "";
			if message_current == message_end
				audio_sound_gain(mus_lullaby, 0, 3000);
		}
		else {
			//global.game_status = 1;
			audio_stop_sound(mus_lullaby);
			room_goto_dark(rm_intro);
			//instance_destroy();		
		}
	}
}


if (message_current = 18 && characters > 10 && characters < 12) or (message_current = 21 && characters > 58) {
	increase = 0.1;
}
else {
	//increase = 1;
}