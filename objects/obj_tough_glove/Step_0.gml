//start_x = camera_get_view_x(view_camera[0]); //координаты камеры
//start_y = camera_get_view_y(view_camera[0]);
if instance_exists(obj_patience) {
	box_y = box_y_check();

	if spawned = false { //если предмет не лежит в комнате, его не видно
		x = 0;
		y = 0;
		visible = false;
	}
	else {
		visible = true; //если лежит - видно
	}

	if (enter_z_check() //если мы хотим взять предмет
	and (distance_to_object(obj_patience) <= 3) and obj_patience.in_menu == false) and obj_patience.in_shop == false {
		if taken = false { //подходим в первый раз
			can_draw = true; //можем рисовать текст и диалог
			obj_patience.taking_item = true;
			//spawned = false;
			if global.items[7].item_name != "" { //проверяем, полный ли инвентарь
				inv_full = true; //если полный, выведем на экран, что инвентарь полон
				phrase = inv_full_text;
			}
			else { //если нет, кладем в свободную ячейку предмет
				for (var _i = 0; _i < 8; _i++) {
					if global.items[_i] == obj_empty_item {
						global.item_IDs[_i] = self.item_index;
						global.items[_i] = self;
						break;
					}
				}
				inv_full = false; //инвентарь не заполнен
				if global.language == "rus" {
					phrase = pick_up_text + "\n* Вы можете нажать C, чтобы\n  открыть меню."; //выводим на экран, что мы нашли предмет
				}
				else {
				
					phrase = pick_up_text + "\n* You can press C to open\n  your menu."; //выводим на экран, что мы нашли предмет
				}
			}
			phrase_length = string_length(phrase); //длина выводимого сообщения
			obj_patience.can_move = false; //запрещаем ходить
			taken = true; //сходили первый раз 
		}
		else { //если мы уже взяли предмет	
			can_draw = false; //убираем текст
			obj_patience.taking_item = false; //больше не берем предмет
			obj_patience.can_move = true; //снова ходим
			if inv_full == false { //если инвентарь не полный
				x = 0; //убираем в край комнаты
				y = 0;
				spawned = false; //делаем невидимым
			}
			else //если инвентарь полный
				taken = false; //не взяли предмет, можно подойти ещё раз
			characters = 0; //сообщение будет выводиться с начала
		}
	}

	if can_draw == true { //отрисовка текста
		if (characters < phrase_length) {
			
			if ctrl_c_hold_check() {
				increase = 5;
			}
			else {
				increase = default_increase;
			}
			
			characters += increase; //по одному символу
			text_to_draw = string_copy(phrase, 0, characters);
			
			var _character = (string_char_at(phrase, characters)); //текущий символ
			
			if (text >= 1) and (_character != " ") { //со звуком
				text = 0;
				audio_play_sound(snd_text2, 10, 0);
			}
			if text < 1 {
				text += increase;
			}
		}
	}
}