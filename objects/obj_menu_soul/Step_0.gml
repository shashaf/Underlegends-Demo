//start_x = camera_get_view_x(view_camera[0]);
//start_y = camera_get_view_y(view_camera[0]);

//if keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter) { 
if enter_z_check() { 
	if frozen = false {
		sub_menu = selected; //если ни одно подменю не выбрано	
		if sub_menu = 1 { //инвентарь
			if global.items[0].item_name != "" { //если инвентарь не пустой
				if !instance_exists(obj_menu_items) //создаем меню инвентаря
					instance_create_depth(global.camera_x + 182, global.camera_y + 52, -10, obj_menu_items);
				x = global.camera_x + 203; //перемещаем душу на 1 предмет
				y = global.camera_y + 95;
				frozen = true; //заходим в подменю
				audio_play_sound(snd_menu_select, 10, 0);
				
			}
			else {
				sub_menu = 4; 
				if !instance_exists(obj_menu_items) //создаем меню инвентаря
					instance_create_depth(global.camera_x + 182, global.camera_y + 52, -10, obj_menu_items);
				obj_menu_items.image_index = 1;
				x = global.camera_x + 203; //перемещаем душу на 1 предмет
				y = global.camera_y + 95;
				frozen = true; //заходим в подменю
				audio_play_sound(snd_menu_select, 10, 0);
				//audio_play_sound(snd_deal_failed, 0, 0);
			}
		}
		if sub_menu == 2 { //характеристики
			//visible = false;	
			frozen = true; //заходим в подменю
			audio_play_sound(snd_menu_select, 10, 0);
		}
		if sub_menu == 3 { //телефон
			frozen = true; //заходим в подменю
			audio_play_sound(snd_menu_select, 10, 0);
			if !instance_exists(obj_menu_cell) //создаем меню телефона
				instance_create_depth(global.camera_x + 188, global.camera_y + 50, -10, obj_menu_cell);
			x = global.camera_x + 203; //перемещаем душу на 1 контакт
			y = global.camera_y + 87; 
		}
	}
	else {
		//если подменю выбрано, у них свои обработчики
	}
}

//if (keyboard_check_pressed(ord("X")) or keyboard_check_pressed(ord("C"))) and sub_menu != 0 { //закрыть или назад
if (shift_x_check() or ctrl_c_check()) and sub_menu != 0 { //закрыть или назад
	//stat = false;
	if UID_mode == false { //если предмет не выбран (нельзя Use, Info или Drop, то сбрасываем все настройки до изначальных
		audio_play_sound(snd_menu_move, 10, 0); 
		item_selected = 1;
		key_item_selected = 1;
		cell_selected = 1;
		x = xstart;
		y = current_y; //душа перемещается напротив одного из 3 подменю
		//obj_in_game_menu.image_index = 0;
		sub_menu = 0; 
		frozen = false;
	}
	else { //если выбран предмет, то возвращаемся к списку предметов
		audio_play_sound(snd_menu_move, 10, 0);
		UID_mode = false;
		action = false;
		x = obj_menu_items.mem_x;
		y = obj_menu_items.mem_y;
	}
}