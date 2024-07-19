//startx = camera_get_view_x(view_camera[0]);
//starty = camera_get_view_y(view_camera[0]);

box_y = box_y_check();

if ((enter_z_check()) and (distance_to_object(obj_patience) <= 3) and (obj_patience.in_menu == false)) {
	if in_dialogue == true { //если мы уже в диалоге нажимаем Z/Enter
		//obj_Patience.can_move = true;
		//in_dialogue = false;
		//if next_m == false && ok == false {
		if next_m == false { //переключение на следующую реплику возможно
			if characters >= string_length(dialogue[dialogue_current]) 
				next_m = true;
			else {
				if pause = true { //если сейчас пауза, убираем её
					pause = false;
				}
				//if need_buffer == false { //если хотя бы один перенос уже был, то есть буфер не пустой
				//	dialogue[dialogue_current] = string_copy(buffer, 0, string_length(buffer)); //копируем строку из буфера
				//}
				//dialogue[dialogue_current] = string_replace_all(dialogue[dialogue_current], "~", "") //стираем все переносы 
				//characters = dialogue_length - 1; //говорим, что можно отрисовывать всю фразу
				characters = dialogue_length; //говорим, что можно отрисовывать всю фразу
				dialogue_draw = string_copy(dialogue[dialogue_current], 0, characters); //копируем её для отрисовки
			}
		}	
		if next_m = true { //переключение на следующую реплику
			if (dialogue_current < dialogue_end) {
				next_m = false;
				//if need_buffer == false
					//dialogue[dialogue_current] = string_copy(buffer, 0, string_length(buffer));
				dialogue_current += 1;
				dialogue_length = string_length(dialogue[dialogue_current]);
				characters = 0;
				dialogue_draw = "";
				//need_buffer = true;
			}
			else { //завершение диалога и выход из него, обнуление всех параметров к исходному варианту
				image_index = 0;
				image_speed = 0;
				instance_destroy(obj_dialogue_avatar);
				in_dialogue = false;
				obj_patience.can_move = true;
				if (dialogue_start == 0) {
					dialogue_start = dialogue_talked; //вот здесь часть про то, что уже поговорили один раз
					dialogue_end = dialogue_talked_end;
					alarm[1] = 1;
				}
				else {
					dialogue_start = dialogue_talked_twice;
					dialogue_end = dialogue_talked_twice_end;
				}
				
				//talked = true;
				dialogue_current = dialogue_start;
				//dialogue_current = dialogue_talked;
				dialogue_draw = "";
				increase = default_increase;
				characters = 0;
				next_m = false;
				//ok = false;
				text = 0;
				pause = false;
				dialogue_length = string_length(dialogue[dialogue_current]);
				//need_buffer = true;
			}
		}
	}
	else { //начало диалога
	//audio_play_sound(snd_dialogTest, 10, 0);
		in_dialogue = true;
		obj_patience.can_move = false;
		instance_create_depth(camera_get_view_x(view_camera[0]) + 90, camera_get_view_y(view_camera[0]) + box_y + 25, 0, obj_dialogue_avatar);
		obj_dialogue_avatar.sprite_index = dialogue_sprite;
		//image_speed = 1;
	}
}

if in_dialogue == true && pause == false { //отображение реплик
	if (characters < string_length(dialogue[dialogue_current])) { //если фраза ещё не вся на экране
		image_speed = 1;
		obj_dialogue_avatar.image_speed = 1;
		characters += increase; //увеличение числа символов для отображения
		dialogue_draw = string_copy(dialogue[dialogue_current], 0, characters); //посимвольный перенос фразы для отрисовки
	
		var _next_character = (string_char_at(dialogue[dialogue_current], characters + 1)); //следующий символ
		var _character = (string_char_at(dialogue[dialogue_current], characters)); //текущий символ
	
		if _next_character == "*" and characters != 1 { //проверка на перенос строки
			//if need_buffer == true { //в случае первого вхождения символа переноса, копируем в буфер исходную фразу
				//buffer = string_copy(dialogue[dialogue_current], 0, string_length(dialogue[dialogue_current]));
				//need_buffer = false;
			//}
			//dialogue[dialogue_current] = string_replace(dialogue[dialogue_current], "~", ""); //убираем символ переноса
			//dialogue_draw = string_copy(dialogue[dialogue_current], 0, characters); //копируем строку без символа для отрисовки
			pause = true; //делаем остановку в 20 кадров при переносе 
			//characters -= 1;
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
			//if need_buffer == false { //если хотя бы один перенос уже был, то есть буфер не пустой
			//	dialogue[dialogue_current] = string_copy(buffer, 0, string_length(buffer)); //копируем строку из буфера
			//}
			//dialogue[dialogue_current] = string_replace_all(dialogue[dialogue_current], "~", "") //стираем все переносы 
			//characters = dialogue_length - 1; //говорим, что можно отрисовывать всю фразу
			characters = string_length(dialogue[dialogue_current]); //говорим, что можно отрисовывать всю фразу
			dialogue_draw = string_copy(dialogue[dialogue_current], 0, characters); //копируем её для отрисовки
		}
		next_m = false; 
		//ok = false;
	
		if (text >= 1) && (_character != " ") { //если выводится буква, сопровождается звуком голоса
			text = 0;
			audio_play_sound(dialogue_voice, 20, 0);
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
		//if need_buffer == false
			//dialogue[dialogue_current] = string_copy(buffer, 0, string_length(buffer));
		dialogue_current += 1;
		dialogue_length = string_length(dialogue[dialogue_current]);
		characters = 0;
		dialogue_draw = "";
		//need_buffer = true;
	}
	else { //завершение диалога и выход из него, обнуление всех параметров к исходному варианту
		image_index = 0;
		image_speed = 0;
		instance_destroy(obj_dialogue_avatar);
		in_dialogue = false;
		obj_patience.can_move = true;
		if (dialogue_start == 0) {
			dialogue_start = dialogue_talked; //вот здесь часть про то, что уже поговорили один раз
			dialogue_end = dialogue_talked_end;
			alarm[1] = 1;
		}
		else {
			dialogue_start = dialogue_talked_twice;
			dialogue_end = dialogue_talked_twice_end;
		}
				
		//talked = true;
		dialogue_current = dialogue_start;
		//dialogue_current = dialogue_talked;
		dialogue_draw = "";
		increase = default_increase;
		characters = 0;
		next_m = false;
		//ok = false;
		text = 0;
		pause = false;
		dialogue_length = string_length(dialogue[dialogue_current]);
		//need_buffer = true;
	}//need_buffer = true;
}

if instance_exists(obj_all_dark) == false {
	depth = -y;
}
else {
	depth = obj_all_dark.depth + 5;
}


