if characters < string_length(dialogue) { //если фраза не вся на экране
	characters += increase;
	text_to_draw = string_copy(dialogue, 0, characters);
	
	var _character = string_char_at(dialogue, characters);			
	if (_character != " ") and letter > 1 {
		audio_play_sound(voice, 20, 0);
		letter = 0;
	}
	
	if _character == "," or _character == "*" or _character == "." {
		increase = 0.2;
	}
	else {
		increase = 1;
	}
	letter += increase;
	obj_shop_manager.image_speed = 1;
	if enter_z_check() or shift_x_check() or ctrl_c_check() {	
		characters = string_length(dialogue);
		text_to_draw = string_copy(dialogue, 0, characters);
	}
}
else {
	obj_shop_manager.image_index = 0;
	obj_shop_manager.image_speed = 0;
	if enter_z_check() or shift_x_check() or ctrl_c_check() {	
		if dialogue_current < dialogue_end {
			dialogue_current++;
			characters = 0; //количество символов на экране
			text_to_draw = ""; //рисуемый текст
			switch (obj_shop_manager.state) {
				case "buy":
					dialogue = discount_dialogue[dialogue_current];
					break;
				case "sell":
					dialogue = sell_dialogue[dialogue_current];
					break
				case "talk":
					dialogue = talk_dialogue[dialogue_current];
					break;
			}
		}
		else {
			instance_destroy()
		}
	}
}

