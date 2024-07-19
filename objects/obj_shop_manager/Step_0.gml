if state == "menu" {
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
		image_speed = 1;
	}
	else {
		image_index = 0;
		image_speed = 0;
	}
}
if enter_z_check() {
	if in_dialogue == false {
		if state == "menu" {
			switch(current_button) {
				case 1:
					state = "buy";
					dialogue_x += 25;
					dialogue = items_list;
					text_to_draw = items_list;
					characters = string_length(text_to_draw);
					text_length = string_length(text_to_draw);
					check_option(current_item);
					check_discount();
					//instance_create_depth(421, 240, obj_shop_menu.depth + 2, obj_shop_item_info);
				
					with (obj_shop_menu) {
						dialogue = buy_dialogue;
						characters = 0; //количество символов на экране
						text_to_draw = ""; //рисуемый текст
						increase = 1; //скорость появления текста
					}
					break;
				case 2:
					state = "sell";
					dialogue_x += 25;
					dialogue = sell_list_1;
					text_to_draw = sell_list_1;
					characters = string_length(text_to_draw);
					text_length = string_length(text_to_draw);
					current_item = 1;
					check_option(current_item);
					if tried_to_sell == false or sell_items_count == 0 {
						instance_create_depth(0, 240, depth - 100, obj_shop_dialogue_box);
						tried_to_sell = true;
						with (obj_shop_dialogue_box) {
							dialogue_end = sell_dialogue_end;
							dialogue = sell_dialogue[dialogue_current];
						}
					}
					with (obj_shop_menu) {
						dialogue = sell_dialogue;
						characters = 0; //количество символов на экране
						text_to_draw = ""; //рисуемый текст
						increase = 1; //скорость появления текста
					}
					break;
				case 3:
					state = "talk";
					dialogue_x += 25;
					dialogue = topics_list;
					text_to_draw = topics_list;
					characters = string_length(text_to_draw);
					text_length = string_length(text_to_draw);
					check_option(current_topic);
				
					with (obj_shop_menu) {
						dialogue = talk_dialogue;
						characters = 0; //количество символов на экране
						text_to_draw = ""; //рисуемый текст
						increase = 1; //скорость появления текста
					}
					break;
				case 4:
					room_goto_dark(room_before_shop);
					//game_end();
					break;
				/*default:
					state = "buy";
					dialogue = "50G - Tough Glove\n50G - Manly Bandanna\n15G - Bisicle\n25G - Cinnamon Bun\nExit";
					check_item(current_item);
					break;*/
			}
		}
		else if state == "buy" {
			if current_item == 5 { //выход
				if instance_exists(obj_shop_item_info) {
					instance_destroy(obj_shop_item_info);
				}
				dialogue_x = 39;
				dialogue = second_dialogue;
				text_length = string_length(dialogue);
				text_to_draw = "";
				characters = 0;
				current_item = 1;
				check_button(current_button);
				state = "menu";
			
				with (obj_shop_menu) {
					dialogue = buy_dialogue;
					characters = 0; //количество символов на экране
					text_to_draw = ""; //рисуемый текст
					increase = 1; //скорость появления текста
				}
			}
			else {
				state = "confirm_buy";
				alarm[0] = 30;
				var _cost = other.items[other.current_item-1].buy_cost;
				if know_about_discount == true {
					_cost = other.items[other.current_item-1].discount_cost;
				}
				with (obj_shop_menu) {
					if global.language == "rus" {
						dialogue = "Купить`nза ";
						dialogue += string(_cost) + other.currency + "?`n Да`n Нет";
					}
					else {
						dialogue = "Buy it`nfor ";
						dialogue += string(_cost) + other.currency + "?`n Yes`n No";
					}
					characters = 0; //количество символов на экране
					text_to_draw = ""; //рисуемый текст
					increase = 1; //скорость появления текста
				}
			}
		}
		else if state == "sell" { //Если выбрали продать
			if current_item == 5 { //выход
				if instance_exists(obj_shop_item_info) {
					instance_destroy(obj_shop_item_info);
				}
				dialogue_x = 39;
				dialogue = second_dialogue;
				text_length = string_length(dialogue);
				text_to_draw = "";
				characters = 0;
				current_item = 1;
				check_button(current_button);
				state = "menu";
			
				with (obj_shop_menu) {
					dialogue = buy_dialogue;
					characters = 0; //количество символов на экране
					text_to_draw = ""; //рисуемый текст
					increase = 1; //скорость появления текста
				}
			}
			else {
				state = "confirm_sell";
				alarm[0] = 30;
	
				with (obj_shop_menu) {
					var _cost = 999;
					if other.dialogue == other.sell_list_2 {
						_cost = global.items[other.current_item+3].sell_cost;
					}
					else if other.dialogue == other.sell_list_1 {
						_cost = global.items[other.current_item-1].sell_cost;
					}
					if global.language == "rus" {
						dialogue = "Продать`nза ";
						//dialogue += string(global.items[other.current_item-1].sell_cost) + other.currency + "?`n Да`n Нет";
						dialogue += string(_cost) + other.currency + "?`n Да`n Нет";
					}
					else {
						dialogue = "Sell it`nfor ";
						//dialogue += string(global.items[other.current_item-1].sell_cost) + other.currency + "?`n Yes`n No";
						dialogue += string(_cost) + other.currency + "?`n Yes`n No";
					}
					characters = 0; //количество символов на экране
					text_to_draw = ""; //рисуемый текст
					increase = 1; //скорость появления текста
				}
			}
		}
		else if state == "talk" { //Если выбрали Говорить
			if current_topic == 5 { //выход
				dialogue_x = 39;
				dialogue = second_dialogue;
				text_length = string_length(dialogue);
				text_to_draw = "";
				characters = 0;
				current_topic = 1;
				check_button(current_button);
				state = "menu";
			
				with (obj_shop_menu) {
					dialogue = buy_dialogue;
					characters = 0; //количество символов на экране
					text_to_draw = ""; //рисуемый текст
					increase = 1; //скорость появления текста
				}
			}
			else {
				switch (current_topic) {
					case 1:
						instance_create_depth(0, 240, depth - 100, obj_shop_dialogue_box);
						global.semi_topics[0] = true;
						if global.language == "rus" {
							topics_list = string_replace(topics_list, "`yЧеловек", "`wЧеловек");
						}
						else {
							topics_list = string_replace(topics_list, "`yHuman", "`wHuman");
						}
						text_to_draw = topics_list;
						dialogue = topics_list;
						with (obj_shop_dialogue_box) {
							dialogue_current = 0;
							dialogue_end = human_dialogue_end;
							dialogue = human_dialogue[dialogue_current];
							talk_dialogue = human_dialogue;
						}
						break;
					case 2:
						instance_create_depth(0, 240, depth - 100, obj_shop_dialogue_box);
						with (obj_shop_dialogue_box) {
							dialogue_current = 0;
							if other.topics[1] == "`wWest Underground" or other.topics[1] == "`wЗападн. Подземелье" {
								if global.language == "rus" {
									other.topics[1] = "`wЗамок `y(Новое)`w";
									other.topics_list = string_replace(other.topics_list, "`wЗападн. Подземелье", "`wЗамок `y(Новое)`w");
								}
								else {
									other.topics[1] = "`wCastle `y(New)`w";
									other.topics_list = string_replace(other.topics_list, "`wWest Underground", "`wCastle `y(New)`w");
								}
								other.text_to_draw = other.topics_list;
								other.dialogue = other.topics_list;
								dialogue_end = west_und_dialogue_end;
								dialogue = west_und_dialogue[dialogue_current];
								talk_dialogue = west_und_dialogue;
							}
							else if other.topics[1] == "`wCastle `y(New)`w" or other.topics[1] = "`wЗамок `y(Новое)`w" {
								if global.language == "rus" {
									other.topics[1] = "`wЗамок";
									other.topics_list = string_replace(other.topics_list, "`wЗамок `y(Новое)`w", "`wЗамок");
								}
								else {
									other.topics[1] = "`wCastle";
									other.topics_list = string_replace(other.topics_list, "`wCastle `y(New)`w", "`wCastle");
								}
								other.text_to_draw = other.topics_list;
								other.dialogue = other.topics_list;
								global.semi_topics[1] = true;
								dialogue_end = castle_dialogue_end;
								dialogue = castle_dialogue[dialogue_current];
								talk_dialogue = castle_dialogue;
							} 
						}
						break;
					case 3:
						global.semi_topics[2] = true;
						instance_create_depth(0, 240, depth - 100, obj_shop_dialogue_box);
						with (obj_shop_dialogue_box) {
							dialogue_current = 0;
							dialogue_end = skeletons_dialogue_end;
							dialogue = skeletons_dialogue[dialogue_current];
							talk_dialogue = skeletons_dialogue;
						}
						break;
					case 4:
						global.semi_topics[3] = true;
						instance_create_depth(0, 240, depth - 100, obj_shop_dialogue_box);
						with (obj_shop_dialogue_box) {
							dialogue_current = 0;
							dialogue_end = about_yourself_dialogue_end;
							dialogue = about_yourself_dialogue[dialogue_current];
							talk_dialogue = about_yourself_dialogue;
						}
						break;
				}
			}
		}
		else if state == "confirm_buy" { //Подтверждение покупки
			if (obj_shop_soul_patience.y == 371) { //No
				check_option(current_item);
				state = "buy";
				with (obj_shop_menu) {
					dialogue = buy_dialogue;
					characters = 0; //количество символов на экране
					text_to_draw = ""; //рисуемый текст
					increase = 1; //скорость появления текста
				}
			}
			else if (obj_shop_soul_patience.y = 336) {
				buy_item(items[current_item-1]);
			}
		}
		else if state == "confirm_sell" { //Подтверждение покупки
			if (obj_shop_soul_patience.y == 371) { //No
				check_option(current_item);
				state = "sell";
				with (obj_shop_menu) {
					dialogue = sell_dialogue;
					characters = 0; //количество символов на экране
					text_to_draw = ""; //рисуемый текст
					increase = 1; //скорость появления текста
				}
			}
			else if (obj_shop_soul_patience.y == 336) {
				var _item_index = current_item - 1;
				if dialogue == sell_list_2 {
					_item_index = current_item + 3;
				}
				sell_item(_item_index);
			}
		}
	}
}
if (shift_x_check() or ctrl_c_check()) and in_dialogue == false {
	if state != "menu" and state != "confirm_buy" and state != "confirm_sell" {
		if instance_exists(obj_shop_item_info) {
			instance_destroy(obj_shop_item_info);
		}
		dialogue_x = 39;
		dialogue = second_dialogue;
		text_length = string_length(dialogue);
		text_to_draw = "";
		characters = 0;
		current_item = 1;
		current_topic = 1;
		check_button(current_button);
		state = "menu";
		
		with (obj_shop_menu) {
			dialogue = buy_dialogue;
			characters = 0; //количество символов на экране
			text_to_draw = ""; //рисуемый текст
			increase = 1; //скорость появления текста
		}
	}
	else if state == "confirm_buy" {
		check_option(current_item);
		state = "buy";
		with (obj_shop_menu) {
			dialogue = buy_dialogue;
			characters = 0; //количество символов на экране
			text_to_draw = ""; //рисуемый текст
			increase = 1; //скорость появления текста
		}
	}
	else if state == "confirm_sell" {
		check_option(current_item);
		state = "sell";
		with (obj_shop_menu) {
			dialogue = sell_dialogue;
			characters = 0; //количество символов на экране
			text_to_draw = ""; //рисуемый текст
			increase = 1; //скорость появления текста
		}
	}
}