//start_x = camera_get_view_x(view_camera[0]);
//start_y = camera_get_view_y(view_camera[0]);
box_y = box_y_check(); //сообщаем координаты для отрисовки текста
var _temp;
//y = box_y;

if copied == false { //если действие ещё не обработалось
	switch (action_type) { //обрабатываем дествие в зависимости от его типа (1 Use, 2 Info или 3 Drop
		case 1:
			//USE Код
			audio_play_sound(snd_item_pick_up, 10, 0);
			action_text = global.items[item_number-1].use_text; //текст действия достаем из объекта предмета
			if global.items[item_number-1].item_type == 0 { //если предмет это расходник
				global.player_hp += global.items[item_number-1].item_heals;
				if global.player_hp > global.player_max_hp
					global.player_hp = global.player_max_hp;
				
				if item_number == 8 { //если мы использовали 8 предмет
					global.items[item_number-1] = obj_empty_item; //то 8 предмет заменяем на пустой
					global.item_IDs[item_number-1] = 0;
				}
				else { //если мы использовали предмет под номером от 1 до 7
					for (var _i = item_number; _i <= 7; _i++) { //проходим цикл от выбранного предмета до конца инвентаря
						//if global.items[_i].item_name != "" { //если следующий предмет не пустой
							global.items[_i-1] = global.items[_i]; //сдвигаем предметы на 1
							global.item_IDs[_i-1] = global.item_IDs[_i]; //сдвигаем предметы на 1
						//}
						//else {
							global.items[_i-1] = global.items[_i];
							global.item_IDs[_i-1] = global.item_IDs[_i];
							//break;
						//}
						if _i == 7 { //последний предмет делаем пустым
							global.items[_i] = obj_empty_item;
							global.item_IDs[_i] = 0;
						}
					} 
				}
				break;
			}
			if global.items[item_number-1].item_type == 1 { //если предмет это оружие, то заменяем текущее оружие 
				_temp = global.player_weapon;
				global.player_weapon = global.items[item_number-1];
				global.item_attack = global.items[item_number-1].weapon_attack;
				global.player_weapon_index = global.items[item_number-1].weapon_index;
				
				if _temp != obj_hand {
					global.items[item_number-1] = _temp;
					global.item_IDs[item_number-1] = _temp.item_index;
				}
				else {
					global.items[item_number-1] = obj_empty_item;
					global.item_IDs[item_number-1] = 0;
					for (var _i = item_number; _i <= 7; _i++) { //проходим цикл от выбранного предмета до конца инвентаря
						//if global.items[_i].item_name != "" { //если следующий предмет не пустой
							global.items[_i-1] = global.items[_i]; //сдвигаем предметы на 1
							global.item_IDs[_i-1] = global.item_IDs[_i]; //сдвигаем предметы на 1
						//}
						//else {
							global.items[_i-1] = global.items[_i];
							global.item_IDs[_i-1] = global.item_IDs[_i];
							//break;
						//}
						if _i == 7 { //последний предмет делаем пустым
							global.items[_i] = obj_empty_item;
							global.item_IDs[_i] = 0;
						}
					} 
				}
				
			}
			if global.items[item_number-1].item_type == 2 { //если предмет это броня, то заменяем текущую броню
				_temp = global.player_armor;
				global.player_armor = global.items[item_number-1];
				global.item_defence = global.items[item_number-1].armor_defence;
				global.player_armor_index = global.items[item_number-1].armor_index;
				if _temp != obj_bandage_armor {
					global.items[item_number-1] = _temp;
					global.item_IDs[item_number-1] = _temp.item_index;
				}
				else {
					global.items[item_number-1] = obj_bandage_heal;
					instance_create_depth(room_width/2, room_height/2, 15, obj_bandage_heal);
					global.item_IDs[item_number-1] = obj_bandage_heal.item_index;
				}
			}
			break;
		case 2:
			//INFO код
			//if global.items[item_number-1].item_type != 0 
				audio_play_sound(snd_item_pick_up, 10, 0);
				action_text = global.items[item_number-1].info_text; //текст действия достаем из объекта предмета
			break;
		case 3:
			//DROP Код
			audio_play_sound(snd_item_drop, 10, 0);
			if global.language == "rus" {
				action_text = "* Вы выбросили " + global.items[item_number-1].item_name + "."; //получаем имя предмета, который дропаем
			}
			else {
				action_text = "* You dropped the " + global.items[item_number-1].item_name + "."; //получаем имя предмета, который дропаем
			}
			if item_number == 8 { //если мы выбросили 8 предмет
				global.item_IDs[item_number-1] = 0;
				global.items[item_number-1] = obj_empty_item; //то 8 предмет заменяем на пустой
			}
			else { //если мы выбросили предмет под номером от 1 до 7
				for (var _i = item_number; _i <= 7; _i++) { //проходим цикл от выбранного предмета до конца инвентаря
					if global.items[_i].item_name != "" { //если следующий предмет не пустой
						global.item_IDs[_i-1] = global.item_IDs[_i];
						global.items[_i-1] = global.items[_i]; //сдвигаем предметы на 1
					}
					else { //если пустой, то тоже сдвигаем, не очень помню почему
						global.item_IDs[_i-1] = global.item_IDs[_i];
						global.items[_i-1] = global.items[_i];
						//break;
					}
					if _i == 7 { //последний предмет делаем пустым
						global.item_IDs[_i] = 0;
						global.items[_i] = obj_empty_item;
					}
				} 
			}
			break;
	}
	action_text_length = string_length(action_text);
	copied = true; //видимо, чтобы процедура выполнялась только 1 раз
}

if (characters < action_text_length) { //классическая отрисовка фразы по символу
	characters ++;
	text_to_draw = string_copy(action_text, 0, characters);
			
		var _character = (string_char_at(action_text, characters)); //текущий символ
			
		if (text == 1) and (_character != " ") {
			text = 0;
			audio_play_sound(snd_text2, 10, 0);
		}
		if text < 1 {
			text += increase;
		}
		if (enter_z_check() or shift_x_check()) {
			characters = action_text_length;
			text_to_draw = string_copy(action_text, 0, characters);
		}
}
else { //если фраза уже отрисована, закрывается любой активной кнопкой
	if (enter_z_check() or shift_x_check()) {
		instance_destroy();
	}
}
