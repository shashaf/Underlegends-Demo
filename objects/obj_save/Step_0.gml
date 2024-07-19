if obj_patience.y >= global.camera_y + 240 {
	box_y = 20;
}
else {
	box_y = 350;
}

if ((enter_z_check()) and (distance_to_object(obj_patience) <= 3) 
and obj_patience.in_menu == false) and state != 2 and obj_patience.in_shop == false {
	if is_saving == true and can_draw == true {
	//if can_draw == true {
		if next_m == false {
			if characters >= string_length(messages[message_current])
				next_m = true;
			else {
				characters = string_length(messages[message_current]) - 1;
				dialogue_draw = string_copy(messages[message_current], 0, characters);
			}
		}
		if next_m == true {
			if (message_current < message_end) {
				next_m = false;
				message_current ++;
				message_length = string_length(messages[message_current]);
				characters = 0;
				dialogue_draw = "";
			}
			else { //прекращение отрисовки сообщений и создание окна сохранения
				//is_saving = false;
				can_draw = false;
				audio_play_sound(snd_menu_select, 10, 0);
				state = 2;
				instance_create_depth(global.camera_x + 100, global.camera_y + 30 + 60, 0, obj_save_window);
				next_m = false;
				message_current = 0;
				message_length = string_length(messages[message_current]);
				characters = 0;
				dialogue_draw = "";
			}
		}
	}
	else if is_saving == true and can_draw == false { 
		//can_draw = true;
		can_draw = false;
		obj_patience.can_move = true;
		obj_patience.reading = false;
	}
	else if is_saving == false and can_draw == false { //начало сохранения
		state = 1;
		obj_patience.can_move = false;
		obj_patience.reading = true;
		can_draw = true;
		is_saving = true;
	}
}

if is_saving == true and can_draw == true {
	if (characters < message_length) {
		characters += increase;
		dialogue_draw = string_copy(messages[message_current], 0, characters);
		
		var _character = (string_char_at(messages[message_current], characters));
		
		if _character == "," {
			increase = 0.2;
		}
		else {
			increase = 1;
		}
		
		if keyboard_check_pressed(ord("X")) {
			characters = message_length - 1;
			dialogue_draw = string_copy(messages[message_current], 0, characters);
		}
		next_m = false;
		
		if (text >= 1) and (_character != " ") {
			text = 0;
			audio_play_sound(snd_text2, 10, 0);
		}
		
		if text < 1 {
			text += increase;
		}
	}
}