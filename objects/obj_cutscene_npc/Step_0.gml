//var start_x = camera_get_view_x(view_camera[1]);
//var start_y = camera_get_view_y(view_camera[1]);

if obj_patience.y >= start_y + 240 {
	box_y = 20;
}
else {
	box_y = 350;
}

if begin_dialogue == true { //начало диалога
	//audio_play_sound(snd_dialogTest, 10, 0);
	in_dialogue = true;
	begin_dialogue = false;
	characters = 0;
	obj_patience.can_move = false;
	if view_visible[0] == false {
		instance_create_depth(camera_get_view_x(view_camera[1]) + 90, camera_get_view_y(view_camera[1]) + box_y + 25, 0, obj_dialogue_avatar);
	}
	else if view_visible[0] == true {
		instance_create_depth(camera_get_view_x(view_camera[0]) + 90, camera_get_view_y(view_camera[0]) + box_y + 25, 0, obj_dialogue_avatar);
	}
	obj_dialogue_avatar.sprite_index = dialogue_sprite;
	sprite_index = object_sprite;
}

if ((enter_z_check()) and obj_patience.in_menu == false) {
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
				image_index = 0;
				image_speed = 0;
				instance_destroy(obj_dialogue_avatar);
				in_dialogue = false;
				dialogue_current = dialogue_start;
				dialogue_draw = "";
				increase = default_increase;
				characters = 0;
				next_m = false;
				text = 0;
				pause = false;
				dialogue_length = string_length(dialogue[dialogue_current]);
				need_buffer = true;
				//obj_cutscene1.timeline_position = 219;
				cutscene.timeline_position = timeline_auto_position;
				cutscene.tl_speed = 1;
				//obj_patience.in_cutscene = false;
			}
		}
	}
}

if in_dialogue == true && pause == false { //отображение реплик
	if (characters < dialogue_length) { //если фраза ещё не вся на экране
		image_speed = 1;
		obj_dialogue_avatar.image_speed = 1;
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
		
		if (_character == "," or _character == "."){ //добавление короткой паузы при запятой
			increase = 0.2;
		}
		//else if _character == "?" or _character == "!" or _character == "." { //добавление большой паузы при конце предложения
		//	increase = 0.05;
		//}
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
		//ok = false;
	
		if dialogue_voice != snd_flowey_evil_voice {
			if (text >= 1) && (_character != " ") { //если выводится буква, сопровождается звуком голоса
				text = 0;
				audio_play_sound(dialogue_voice, 20, 0);
			}
	
			if text < 1 { //регулирует скорость появления букв
				text += increase;
			}
		}
		else { //злой флауи говорит чуть медленнее
			if (text >= 2) && (_character != " ") { //если выводится буква, сопровождается звуком голоса
				text = 0;
				audio_play_sound(dialogue_voice, 20, 0);
			}
	
			if text < 2 { //регулирует скорость появления букв
				text += increase;
			}
		}
	}
	else { //если вся фраза на экране
		dialogue[dialogue_current] = string_replace_all(dialogue[dialogue_current], "~", "") //стираем все переносы 
		//characters = dialogue_length - 1; //говорим, что можно отрисовывать всю фразу
		dialogue_draw = string_copy(dialogue[dialogue_current], 0, characters); //копируем её для отрисовки
		next_m = true;
		image_index = 0;
		image_speed = 0;
		obj_dialogue_avatar.image_index = 0;
		obj_dialogue_avatar.image_speed = 0;
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
		image_index = 0;
		image_speed = 0;
		instance_destroy(obj_dialogue_avatar);
		in_dialogue = false;
		dialogue_current = dialogue_start;
		dialogue_draw = "";
		increase = default_increase;
		characters = 0;
		next_m = false;
		//ok = false;
		text = 0;
		pause = false;
		dialogue_length = string_length(dialogue[dialogue_current]);
		need_buffer = true;
		cutscene.timeline_position = timeline_auto_position;
		cutscene.tl_speed = 1;
		//obj_patience.in_cutscene = false;
	}
}

if instance_exists(obj_all_dark) == false {
	depth = -y;
}
else {
	depth = obj_all_dark.depth + 5;
}


