
box_y = box_y_check();

if ((enter_z_check()) and (distance_to_object(obj_patience) <= distance_to_player) and obj_patience.in_menu == false) {
	if in_dialogue == true { //если мы уже в диалоге нажимаем Z/Enter
		if next_m == false { //переключение на следующую реплику возможно
			if characters >= string_length(dialogue[dialogue_current]) 
				next_m = true;
			else {
				if pause = true { //если сейчас пауза, убираем её
					pause = false;
				}
				if need_buffer == false { //если хотя бы один перенос уже был, то есть буфер не пустой
					dialogue[dialogue_current] = string_copy(buffer, 0, string_length(buffer)); //копируем строку из буфера
				}
				dialogue[dialogue_current] = string_replace_all(dialogue[dialogue_current], "~", "") //стираем все переносы 
				characters = dialogue_length - 1; //говорим, что можно отрисовывать всю фразу
				dialogue_draw = string_copy(dialogue[dialogue_current], 0, characters); //копируем её для отрисовки
			}
		}	
		if next_m = true { //переключение на следующую реплику
			if (dialogue_current < dialogue_end) {
				next_m = false;
				if need_buffer == false
					dialogue[dialogue_current] = string_copy(buffer, 0, string_length(buffer));
				dialogue_current += 1;
				dialogue_length = string_length(dialogue[dialogue_current]);
				characters = 0;
				dialogue_draw = "";
				need_buffer = true;
			}
			else { //завершение диалога и выход из него, обнуление всех параметров к исходному варианту
				if web_checked == false {
					with (obj_web) {
						if web_checked == false {
							if dialogue_current < 6 {
								self.dialogue_current++;
								self.dialogue_end++;		
							}
							else {
								self.dialogue_current = 1;
								self.dialogue_end = 1;
								global.player_gold += 10;
							}
							self.dialogue_length = string_length(self.dialogue[self.dialogue_current]);
						}
					}
					web_checked = true;
					self.dialogue_current--;
					self.dialogue_end--;
					self.dialogue_length = string_length(self.dialogue[self.dialogue_current]);
				}
				in_dialogue = false;
				obj_patience.can_move = true;
				obj_patience.reading = false;
				dialogue_draw = "";
				increase = default_increase;
				characters = 0;
				next_m = false;
				text = 0;
				pause = false;
				need_buffer = true;
			}
		}
	}
	else { //начало диалога
		in_dialogue = true;
		obj_patience.can_move = false;
		obj_patience.reading = true;
	}
}

if in_dialogue == true && pause == false { //отображение реплик
	if (characters < dialogue_length) { //если фраза ещё не вся на экране
		characters += increase; //увеличение числа символов для отображения
		dialogue_draw = string_copy(dialogue[dialogue_current], 0, characters); //посимвольный перенос фразы для отрисовки
	
		var _character = (string_char_at(dialogue[dialogue_current], characters)); //текущий символ
	
		if _character == "~" { //проверка на перенос строки
			if need_buffer == true { //в случае первого вхождения символа переноса, копируем в буфер исходную фразу
				buffer = string_copy(dialogue[dialogue_current], 0, string_length(dialogue[dialogue_current]));
				need_buffer = false;
			}
			dialogue[dialogue_current] = string_replace(dialogue[dialogue_current], "~", ""); //убираем символ переноса
			dialogue_draw = string_copy(dialogue[dialogue_current], 0, characters); //копируем строку без символа для отрисовки
			pause = true; //делаем остановку в 20 кадров при переносе 
			//characters -= 1;
			alarm[0] = 20;
		}
		
		if _character == "," { //добавление короткой паузы при запятой
			increase = 0.2;
		}
		
		else {
			increase = default_increase;
		}
		
		if ctrl_c_hold_check() { //ускоренное отображение при зажатии C
			increase = 5;
		}
		
		if (shift_x_check()) { //отображение всей фразы при нажатии X
			if pause = true { //если сейчас пауза, убираем её
				pause = false;
			}
			if need_buffer == false { //если хотя бы один перенос уже был, то есть буфер не пустой
				dialogue[dialogue_current] = string_copy(buffer, 0, string_length(buffer)); //копируем строку из буфера
			}
			dialogue[dialogue_current] = string_replace_all(dialogue[dialogue_current], "~", "") //стираем все переносы 
			characters = dialogue_length - 1; //говорим, что можно отрисовывать всю фразу
			dialogue_draw = string_copy(dialogue[dialogue_current], 0, characters); //копируем её для отрисовки
		}
		next_m = false; 
	
		if (text >= 1) && (_character != " ") { //если выводится буква, сопровождается звуком голоса
			text = 0;
			audio_play_sound(dialogue_voice, 20, 0);
		}
	
		if text < 1 { //регулирует скорость появления букв
			text += increase;
		}
	}
	else { //если вся фраза на экране
		dialogue[dialogue_current] = string_replace_all(dialogue[dialogue_current], "~", "") //стираем все переносы 
		//characters = dialogue_length - 1; //говорим, что можно отрисовывать всю фразу
		dialogue_draw = string_copy(dialogue[dialogue_current], 0, characters); //копируем её для отрисовки
		next_m = true;
	}
}

//********проматывание диалогов зажатием C***************//
if (ctrl_c_hold_check() and in_dialogue == true and next_m = true) { //переход на следующую реплику с зажатием C
	if (dialogue_current < dialogue_end) {
		next_m = false;
		if need_buffer == false
			dialogue[dialogue_current] = string_copy(buffer, 0, string_length(buffer));
		dialogue_current += 1;
		dialogue_length = string_length(dialogue[dialogue_current]);
		characters = 0;
		dialogue_draw = "";
		need_buffer = true;
	}
	else { //завершение диалога и выход из него, обнуление всех параметров к исходному варианту
		if web_checked == false {
			with (obj_web) {
				if web_checked == false {
					if dialogue_current < 6 {
						self.dialogue_current++;
						self.dialogue_end++;		
					}
					else {
						self.dialogue_current = 1;
						self.dialogue_end = 1;
						global.player_gold += 10;
					}
					self.dialogue_length = string_length(self.dialogue[self.dialogue_current]);
				}
			}
			web_checked = true;
			self.dialogue_current--;
			self.dialogue_end--;
			self.dialogue_length = string_length(self.dialogue[self.dialogue_current]);
		}
		in_dialogue = false;
		obj_patience.can_move = true;
		obj_patience.reading = false;
		dialogue_draw = "";
		increase = default_increase;
		characters = 0;
		next_m = false;
		text = 0;
		pause = false;
		//dialogue_length = string_length(dialogue[dialogue_current]);
		need_buffer = true;
	}
}

if instance_exists(obj_all_dark) == false {
	depth = obj_patience.depth + 1;
}
else {
	depth = obj_all_dark.depth + 5;
}

//depth = -y;