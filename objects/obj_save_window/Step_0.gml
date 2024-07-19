room_name = obj_save.room_name;
if (enter_z_check()) {
	switch (image_index) {
		case 0:
		//первый сейв
			global.game_status = 1;
			image_index = 4;
			global.game_seconds = global.real_game_seconds;
			global.game_minutes = global.real_game_minutes;
			global.room_label = room_name;
			audio_play_sound(snd_save, 10, 0);
			save_mine();
			break;
		case 1: //Return 
			audio_play_sound(snd_menu_select, 10, 0);
			//obj_Patience.is_saving = false;
			//obj_save.is_saving = false;
			instance_destroy();
			break;
		case 2:
			//save код
			image_index = 4;
			global.game_seconds = global.real_game_seconds;
			global.game_minutes = global.real_game_minutes;
			global.room_label = room_name;
			audio_play_sound(snd_save, 10, 0);
			save_mine();
			break;
		case 3: //Return
			audio_play_sound(snd_menu_select, 10, 0);
			//obj_Patience.is_saving = false;
			//obj_save.is_saving = false;
			instance_destroy();
			break;
		case 4: //Close after save
			instance_destroy();
			break;
	}
}