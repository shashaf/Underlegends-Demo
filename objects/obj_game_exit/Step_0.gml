
// You can write your code in this editor
if can_draw == true { //отрисовка текста
	if (characters < phrase_length) {
	
		if ctrl_c_hold_check() {
			increase = 5;
		}
		else {
			increase = 1;
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
	else {
		if enter_z_check() and !instance_exists(obj_all_white) {
			if (yes == true) {
				instance_create_depth(global.camera_x, global.camera_y, 0, obj_all_white);
				obj_patience.sprite_index = spr_patience_down;
				visible = false;
				if room == rm_ruins_1_prototype {
					alarm[0] = 150;
				}
				else if room == rm_reject2 {
					alarm[3] = 150;
				}
			}
			else {
				with (obj_patience) {
					can_move = true;
					obj_patience.sprite_index = spr_patience_down;
					reading = false;
				}
				text_to_draw = ""; //текст для вывода на экран
				yes = true;
				can_draw = false; //нужно ли выводить на экран текст
				default_increase = 1; //скорость появления символов на экране
				increase = default_increase;
				characters = 0; //кол-во символов строки для отрисовк
				text = 0; //флаг для проверки выводится ли буква на экран
				box_y = box_y_check(); //координаты диалог-бокса
				alarm[1] = 90;
			}
		}
	}
}



