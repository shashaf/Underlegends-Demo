wrong_key = false;
if setting_key == true {
	if button_pressed == false {
		button_pressed = true;
		audio_play_sound(snd_menu_select, 0, 0);
		keyboard_unset_map();
		keyboard_set_map(ord("A"), vk_left);
		keyboard_set_map(ord("D"), vk_right);
		keyboard_set_map(ord("S"), vk_down);
		keyboard_set_map(ord("W"), vk_up);
		keyboard_set_map(ord("Z"), vk_enter);
		keyboard_set_map(ord("X"), vk_shift);
		keyboard_set_map(ord("C"), vk_control);
	}
	else {
		can_draw_key[current_option-1] = true;
		for (var _i = 0; _i <= 16; _i++) {
			//if (keyboard_check_direct(banned_keys[_i]) == true) {
			if keyboard_lastkey == banned_keys[_i] {
				audio_play_sound(snd_deal_failed, 0, 0);
				wrong_key = true;
				break;
			}
		}
		if wrong_key == false {
			switch (current_option) {
				case 1:
					global.left = keyboard_lastkey;
					left = get_key_name(global.left);
					break;
				case 2:
					global.right = keyboard_lastkey;
					right = get_key_name(global.right);
					break;
				case 3:
					global.up = keyboard_lastkey;
					up = get_key_name(global.up)
					break;
				case 4:
					global.down = keyboard_lastkey;
					down = get_key_name(global.down)
					break;
				case 5:
					global.enter = keyboard_lastkey;
					enter = get_key_name(global.enter)
					break;
				case 6:
					global.shift = keyboard_lastkey;
					shift = get_key_name(global.shift)
					break;
				case 7:
					global.ctrl = keyboard_lastkey;
					ctrl = get_key_name(global.ctrl)
					break;
			}
			for (var _i = 0; _i < 7; _i++) { 
				if (keyboard_lastkey == current_keys[_i] and _i != current_option-1) { //если для какого-то действия назначается кнопка, назначенная для другого
					current_keys[_i] = banned_keys[_i]; //тогда для прошлого действия переназначаем на дефолтное
					can_draw_key[_i] = false;
				}
			}
			current_keys[current_option-1] = keyboard_lastkey;	
		}
		obj_custom_controls.alarm[0] = 1;
		setting_key = false;
		button_pressed = false;
	}
}