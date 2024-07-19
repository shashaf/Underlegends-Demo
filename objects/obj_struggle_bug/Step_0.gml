
box_y = box_y_check();

if ((enter_z_check())) {
	if in_dialogue == true { //если мы уже в диалоге нажимаем Z/Enter
		if next_m == false { //переключение на следующую реплику возможно
			if characters >= string_length(dialogue[dialogue_current]) 
				next_m = true;
			else {
				if pause = true { //если сейчас пауза, убираем её
					pause = false;
				}
				characters = dialogue_length; //говорим, что можно отрисовывать всю фразу
				dialogue_draw = string_copy(dialogue[dialogue_current], 0, characters); //копируем её для отрисовки
			}
		}	
		if next_m = true { //переключение на следующую реплику
			if (dialogue_current < dialogue_end) {
				next_m = false;
				dialogue_current += 1;
				dialogue_length = string_length(dialogue[dialogue_current]);
				characters = 0;
				dialogue_draw = "";
			}
			else { //завершение диалога и выход из него, обнуление всех параметров к исходному варианту
				if global.enough == 0 {
					alarm[1] = 1;
				}
				else {
					instance_destroy();
					obj_patience.struggle = 0;
					obj_patience.struggle_limit = 2000;
				}
			}
		}
	}
}

if in_dialogue == true && pause == false { //отображение реплик
	if (characters < string_length(dialogue[dialogue_current])) { //если фраза ещё не вся на экране
		image_speed = 1;
		if instance_exists(obj_dialogue_avatar) {
			obj_dialogue_avatar.image_speed = 1;
		}
		characters += increase; //увеличение числа символов для отображения
		dialogue_draw = string_copy(dialogue[dialogue_current], 0, characters); //посимвольный перенос фразы для отрисовки
	
		var _next_character = (string_char_at(dialogue[dialogue_current], characters + 1)); //следующий символ
		var _character = (string_char_at(dialogue[dialogue_current], characters)); //текущий символ
	
		if _next_character == "*" and characters != 1 { //проверка на перенос строки
			pause = true; //делаем остановку в 20 кадров при переносе 
			alarm[0] = 20;
		}
		
		if _character == "," { //добавление короткой паузы при запятой
			increase = 0.2;
		}
		//else if _character == "?" or _character == "!" or _character == "." { //добавление большой паузы при конце предложения
		//	increase = 0.05;
		//}
		else {
			increase = default_increase;
		}
		
		if ctrl_c_hold_check() {
			increase = 5;
		}
		
		if (shift_x_check()) { //отображение всей фразы при нажатии X
			if pause = true { //если сейчас пауза, убираем её
				pause = false;
			}
			characters = string_length(dialogue[dialogue_current]); //говорим, что можно отрисовывать всю фразу
			dialogue_draw = string_copy(dialogue[dialogue_current], 0, characters); //копируем её для отрисовки
		}
		next_m = false; 
	
		if (text >= 1) && (_character != " ") { //если выводится буква, сопровождается звуком голоса
			text = 0;
			if dialogue_current == 0 {
				if room != rm_reject2 or !instance_exists(obj_lemike_cutscene3) {
					audio_play_sound(snd_text2, 20, 0);
				}
				else {
					audio_play_sound(dialogue_voice, 20, 0);
				}
			} 
			else {
				audio_play_sound(dialogue_voice, 20, 0);
			}
		}
	
		if text < 1 { //регулирует скорость появления букв
			text += increase;
		}
	}
	else { //если фраза уже вся на экране
		//dialogue[dialogue_current] = string_replace_all(dialogue[dialogue_current], "~", "") //стираем все переносы 
		dialogue_draw = string_copy(dialogue[dialogue_current], 0, characters); //копируем её для отрисовки
		next_m = true;
		image_index = 0;
		image_speed = 0;
		if instance_exists(obj_dialogue_avatar) {
			obj_dialogue_avatar.image_index = 0;
			obj_dialogue_avatar.image_speed = 0;
		}
	}
}

if (ctrl_c_hold_check() and in_dialogue == true and next_m = true) { //переход на следующую реплику с зажатием C
	if (dialogue_current < dialogue_end) {
		next_m = false;
		dialogue_current += 1;
		dialogue_length = string_length(dialogue[dialogue_current]);
		characters = 0;
		dialogue_draw = "";
	}
	else { //завершение диалога и выход из него, обнуление всех параметров к исходному варианту
		if global.enough == 0 {
			alarm[1] = 1;
		}
		else {
			instance_destroy();
			obj_patience.struggle = 0;
			obj_patience.struggle_limit = 2000;
		}
	}
}



