if lang == true {
	if image_index == 7 { 
		global.language = "eng";
		sprite_index = spr_settings_screen;
		image_index = 7;
	}
	else if image_index == 8 { 
		global.language = "rus";
		sprite_index = spr_settings_screen_rus;
		image_index = 8;
	}
}
if exit_buttons == true {
	if image_index == 9 { 
		obj_custom_controls.alarm[1] = 1;
	}
	else if image_index == 10 { 
		obj_custom_controls.alarm[0] = 1;
		
		ini_open("save.ini") {
			ini_write_string("Global", "Lang", global.language);
		}
		ini_close()
		if global.language == "rus" {
				global.cell[0] = "Дом";
		}
		else {
			global.cell[0] = "Home";
		}
		global.cell[1] = "";
		global.cell[2] = "";
		global.cell[3] = "";
		room_goto(rm_menu);
	}
}

if current_option < 8 {
	if setting_key == false {
		can_draw_key[current_option-1] = false;
		setting_key = true;
	}
}
audio_play_sound(snd_menu_select, 1, 0);