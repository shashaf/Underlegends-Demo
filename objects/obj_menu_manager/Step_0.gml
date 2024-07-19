//выбор кнопки нажатием Z или Enter
if enter_z_check() {
	if instance_exists(obj_begin_button) and obj_begin_button.selected == true {
			//instance_create_depth(global.player_x, global.player_y, 0, obj_Patience);
			room_goto(rm_naming);
			//room_goto(global.room_name);
			//audio_stop_sound(global.menu_music);
	}
	else if instance_exists(obj_continue_button) and obj_continue_button.selected == true {
		instance_create_depth(global.player_x, global.player_y, 0, obj_patience);
		room_goto(global.room_name);
		audio_stop_sound(global.menu_music);
	}
	else if instance_exists(obj_reset_button) and obj_reset_button.selected == true {
		if reset == true {
			if yes == true {
				audio_play_sound(snd_menu_select, 10, 0);
				reset_game();
				audio_stop_sound(global.menu_music);
				global.menu_music = mus_menu_start;
				audio_play_sound(global.menu_music, 10, true);
				room_goto(rm_naming);
			}
			else {
				audio_play_sound(snd_menu_select, 10, 0);
				reset = false;
				buttons[0].visible = true;
				buttons[1].visible = true;
				buttons[2].visible = true;
				buttons[3].visible = true;
			}
		}
		else {
			audio_play_sound(snd_menu_select, 10, 0);
			reset = true;
			buttons[0].visible = false;
			buttons[1].visible = false;
			buttons[2].visible = false;
			buttons[3].visible = false;
		}
	}
	else if instance_exists (obj_settings_button) and obj_settings_button.selected == true {
		audio_stop_sound(global.menu_music);
		room_goto(rm_settings);
	}
	else if obj_quit_button.selected = true {
		game_end();
	}
}
if shift_x_check() {
	if reset == true {
		audio_play_sound(snd_menu_select, 10, 0);
		reset = false;
		buttons[0].visible = true;
		buttons[1].visible = true;
		buttons[2].visible = true;
		buttons[3].visible = true;
	}
}

	//переключение вправо
if keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D")){
	audio_play_sound(snd_menu_move, 10, 0);
	if reset == false {
		buttons[current_button].selected = false;
		/*if buttons[last_button].selected == false {
			buttons[current_button].selected = false;
			current_button++;
		}
		else {
			buttons[current_button].selected = false;
			current_button = 0;
		}*/
		switch (current_button) {
			case 0: //кнопка Начать/Продолжить
				current_button = 2;
				break;
			case 1: //кнопка Настройки
				current_button = last_button;
				break;
			case 2: //кнопка Выход/Сброс
				current_button = 0;
				break;
			case 3:
				current_button = 1;
				break;
		}
		buttons[current_button].selected = true;
	}
	else {
		yes = !yes;
	}
}
//переключение влево
if keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("A")){
	audio_play_sound(snd_menu_move, 10, 0);
	if reset == false {
		buttons[current_button].selected = false;
		/*if buttons[last_button].selected == false {
			buttons[current_button].selected = false;
			current_button++;
		}
		else {
			buttons[current_button].selected = false;
			current_button = 0;
		}*/
		switch (current_button) {
			case 0: //кнопка Начать/Продолжить
				current_button = 2;
				break;
			case 1: //кнопка Настройки
				current_button = last_button;
				break;
			case 2: //кнопка Выход/Сброс
				current_button = 0;
				break;
			case 3:
				current_button = 1;
				break;
		}
		buttons[current_button].selected = true;
	}
	else {
		yes = !yes;
	}
}
if keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S")) or
	keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W")) {
	audio_play_sound(snd_menu_move, 10, 0);
	if reset == false {
		buttons[current_button].selected = false;
		/*if buttons[last_button].selected == false {
			buttons[current_button].selected = false;
			current_button++;
		}
		else {
			buttons[current_button].selected = false;
			current_button = 0;
		}*/
		switch (current_button) {
			case 0: //кнопка Начать/Продолжить
				current_button = 1;
				break;
			case 1: //кнопка Настройки
				current_button = 0;
				break;
			case 2: //кнопка Выход/Сброс
				current_button = last_button;
				break;
			case 3:
				current_button = 2;
				break;
		}
		buttons[current_button].selected = true;
	}
	else {
		yes = !yes;
	}
}
