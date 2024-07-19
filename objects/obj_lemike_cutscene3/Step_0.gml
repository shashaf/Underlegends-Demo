//var startx = camera_get_view_x(view_camera[1]);
//var starty = camera_get_view_y(view_camera[1]);
if instance_exists(obj_dialogue_avatar) {
	if global.language == "rus" {
		switch (dialogue_current) {
			case 2: 
				if audio_is_playing(mus_sheriff_area) {
					audio_sound_gain(mus_sheriff_area, 0, 1500);
				}
				break;
			case 20:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_happy1;
				break;
			case 21:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_happy1;
				break;
			case 22:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_happy1;
				break;
			case 23:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_happy1;
				break;
			case 24:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_happy2;
				break;
			case 25:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_happy2;
				break;
			case 29:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_happy2;
				if !audio_is_playing(mus_sheriff) {
					audio_play_sound(mus_sheriff, 100, 0);
				}
				break;
			case 30:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_happy2;
				break;
			case 31:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_happy2;
				break;
			case 39:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_sad1;
				break;
			case 40:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_sad2;
				break;
			case 41:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_sad1;
				break;
			case 42:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_sad2;
				break;
			case 43:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_sad2;
				break;
			case 44:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_sad2;
				break;
			case 45:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_sad2;
				break;
			case 46:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_sad1;
				break;
			case 47:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_sad1;
				break;
			case 48:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_sad2;
				break;
			case 49:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_sad2;
				break;
			case 50:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_sad1;
				break;
			case 53:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_sad2;
				break;
			case 54:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_sad2;
				break;
			case 55:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_sad2;
				break;
			case 56:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_sad2;
				break;
			case 57:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_sad2;
				break;
			case 58:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_happy1;
				break;
			case 60:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_angry2;
				break;
			case 61:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_angry2;
				break;
			case 62:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_angry2;
				break;
			case 63:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_angry2;
				break;
			case 64:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_angry2;
				break;
			case 65:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_angry2;
				break; 
			case 66:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_angry2;
				break;
			case 67:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_angry2;
				break;
			case 68:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_angry2;
				break;
			case 69:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_angry2;
				break;
			case 70:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue;
				break;
			case 71:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue;
				break;
			case 72:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue;
				break; 
			case 73:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue;
				break; 
			case 74:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue;
				break; 
			case 75:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue;
				break; 
			case 76:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue;
				break;
			case 79:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_happy1;
				break;
			case 80:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_happy2;
				break;
			case 81:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue;
				break;
			case 82:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue;
				break;
			case 87:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_angry2;
				break;
		
			default:
				if !instance_exists(obj_cell_action)
					obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_serious;
				break;
		}
	}
	else {
		switch (dialogue_current) {
			case 2: 
				if audio_is_playing(mus_sheriff_area) {
					audio_sound_gain(mus_sheriff_area, 0, 1500);
				}
				break;
			case 20:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_happy1;
				break;
			case 21:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_happy1;
				break;
			case 22:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_happy1;
				break;
			case 23:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_happy1;
				break;
			case 24:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_happy2;
				break;
			case 25:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_happy2;
				break;
			case 29:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_happy2;
				if !audio_is_playing(mus_sheriff) {
					audio_play_sound(mus_sheriff, 100, 0);
				}
				break;
			case 30:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_happy2;
				break;
			case 31:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_happy2;
				break;
			case 40:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_sad1;
				break;
			case 41:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_sad2;
				break;
			case 42:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_sad1;
				break;
			case 43:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_sad2;
				break;
			case 44:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_sad2;
				break;
			case 45:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_sad2;
				break;
			case 46:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_sad2;
				break;
			case 47:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_sad1;
				break;
			case 48:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_sad1;
				break;
			case 49:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_sad2;
				break;
			case 50:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_sad2;
				break;
			case 51:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_sad1;
				break;
			case 54:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_sad2;
				break;
			case 55:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_sad2;
				break;
			case 56:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_sad2;
				break;
			case 57:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_sad2;
				break;
			case 58:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_sad2;
				break;
			case 59:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_happy1;
				break;
			case 61:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_angry2;
				break;
			case 62:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_angry2;
				break;
			case 63:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_angry2;
				break;
			case 64:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_angry2;
				break;
			case 65:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_angry2;
				break;
			case 66:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_angry2;
				break; 
			case 67:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_angry2;
				break;
			case 68:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_angry2;
				break;
			case 69:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_angry2;
				break;
			case 70:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_angry2;
				break;
			case 71:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue;
				break;
			case 72:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue;
				break;
			case 73:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue;
				break; 
			case 74:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue;
				break; 
			case 75:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue;
				break; 
			case 76:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue;
				break; 
			case 77:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue;
				break;
			case 80:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_happy1;
				break;
			case 81:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_happy2;
				break;
			case 82:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue;
				break;
			case 83:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue;
				break;
			case 88:
				obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_angry2;
				break;
		
			default:
				if !instance_exists(obj_cell_action)
					obj_dialogue_avatar.sprite_index = spr_lemike_dialogue_serious;
				break;
		}
	}
}	

if begin_dialogue == true { //начало диалога
	//audio_play_sound(snd_dialogTest, 10, 0);
	in_dialogue = true;
	begin_dialogue = false;
	characters = 0;
	obj_patience.can_move = false;
	if view_visible[0] == false {
		instance_create_depth(camera_get_view_x(view_camera[1]) + 90, camera_get_view_y(view_camera[1]) + box_y + 25, obj_fence_hor.depth - 5, obj_dialogue_avatar);
	}
	else if view_visible[0] == true {
		instance_create_depth(camera_get_view_x(view_camera[0]) + 90, camera_get_view_y(view_camera[0]) + box_y + 25,obj_fence_hor.depth - 5, obj_dialogue_avatar);
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
				obj_patience.in_cutscene = false;
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
	
		var character = (string_char_at(dialogue[dialogue_current], characters)); //текущий символ
	
		if character == "~" { //проверка на перенос строки
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
		
		if (character == "," or character == "."){ //добавление короткой паузы при запятой
			increase = 0.2;
		}
		//else if character == "?" or character == "!" or character == "." { //добавление большой паузы при конце предложения
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
			if (text >= 1) && (character != " ") { //если выводится буква, сопровождается звуком голоса
				text = 0;
				audio_play_sound(dialogue_voice, 20, 0);
			}
	
			if text < 1 { //регулирует скорость появления букв
				text += increase;
			}
		}
		else { //злой флауи говорит чуть медленнее
			if (text >= 2) && (character != " ") { //если выводится буква, сопровождается звуком голоса
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
		obj_patience.in_cutscene = false;
	}
}

if instance_exists(obj_all_dark) == false {
	depth = -y;
}
else {
	depth = obj_all_dark.depth + 5;
}


