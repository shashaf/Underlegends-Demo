/// @description Insert description here
// You can write your code in this editor
if !instance_exists(obj_all_white) {
	if current_name == "" //пустое имя нельзя выбрать
		done = false;

	if name_chosen = true {
		if (scale_x < 3) {
			scale_x += 0.05;
			scale_y += 0.05;
		}
	}
	
	if shift_x_check() {
		if current_name != "" {
			current_name = string_delete(current_name, string_length(current_name), 1);
			special_text = check_name(current_name);
		}
		if current_name == "" and current_button == 2 {
			current_letter = 0;
			current_button = -1;
		}
	}


	if (enter_z_check()) {
		if name_chosen == false {
			if current_button < 0 { //ввод буквы
				if current_letter < 26 {
					if string_length(current_name) < 6 {
						current_name = string_insert(up_case[current_letter],current_name,string_length(current_name)+1);
					}
					else {
						current_name = string_delete(current_name, string_length(current_name), 1);
						current_name = string_insert(up_case[current_letter],current_name,string_length(current_name)+1);
					}
				}
				else if current_letter < 52 {
					if string_length(current_name) < 6 {
						current_name = string_insert(low_case[current_letter-26], current_name, string_length(current_name)+1);
					}
					else {
						current_name = string_delete(current_name, string_length(current_name), 1);
						current_name = string_insert(low_case[current_letter-26], current_name, string_length(current_name)+1);
					}
				}
			}
			else if current_button = 0 { //выход из игры (Quit)
				audio_stop_sound(global.menu_music);
				room_goto(rm_menu);
				//game_end();
			}
			else if current_button = 1 { //стереть букву (Backspace)
				if current_name != "" {
					current_name = string_delete(current_name, string_length(current_name), 1);
					special_text = check_name(current_name);
				}
				if current_name == "" {
					current_letter = 0;
					current_button = -1;
				}
			}
			else if (current_button = 2 and done == true) {
				obj_spinning_human.visible = false;
				name_chosen = true;
				current_letter = 0;
				current_button = -1;
				scale_x = 1;
				scale_y = 1;
				if current_name == "" {
					confirm_text = warning_text;
				}
			}
			special_text = check_name(current_name); //каждое нажатие проверяет, нужен ли спец. текст
			if (string_lower(current_name) == "toby") {
				audio_play_sound(snd_woof, 10, 0);
			}
		}
		else if no == true {
			obj_spinning_human.visible = true;
			name_chosen = false;
			yes = false;
			no = true;
			done = true;
			confirm_text = default_confirm_text;
			current_letter = 0;
			current_button = -1;
			current_name = "";
			special_text = "";
		}
		else {
			if human == 1 {
				global.human_1_name = current_name;
				obj_spinning_human.sprite_index = spr_bravery_down;
				obj_spinning_human.visible = true;
				human = 2;
				name_chosen = false;
				yes = false;
				no = true;
				confirm_text = default_confirm_text;
				current_letter = 0;
				current_button = -1;
				current_name = "";
				special_text = "";
			}
			else if human == 2 {
				//audio_stop_sound(global.menu_music);
				name_chosen = true;
				global.human_2_name = current_name;
				yes = false;
				no = false;
				//instance_create_depth(0, 0, 0, obj_all_white);
				visible = false;
				if !instance_exists(obj_skill_choice) {
					instance_create_depth(0, 0, 0, obj_skill_choice);
				}
			}
		}
	}
}