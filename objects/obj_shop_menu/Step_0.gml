//if obj_shop_manager.state == "buy" or obj_shop_manager.state == "sell" or obj_shop_manager.state == "talk" {
if obj_shop_manager.state != "menu" and !instance_exists(obj_shop_dialogue_box) {
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
	}
	else {
		obj_shop_manager.image_index = 0;
		obj_shop_manager.image_speed = 0;
	}
}
