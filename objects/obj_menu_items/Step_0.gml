/// @description Insert description here
// You can write your code in this editor
var _item_number = obj_menu_soul.item_selected;
var _key_item_index = obj_menu_soul.key_item_selected - 1;
//start_x = camera_get_view_x(view_camera[0]);
//start_y = camera_get_view_y(view_camera[0]);

//if keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter) { //если выбираем предмет
if enter_z_check() { //если выбираем предмет
	if obj_menu_soul.sub_menu == 1 {
		if  global.items[_item_number-1].item_name != "" { //если выбранный предмет есть в инвентаре
			if obj_menu_soul.UID_mode == false { //если предмет ещё не выбран
				audio_play_sound(snd_menu_select, 10, 0);
				mem_x = obj_menu_soul.x; //запоминаем положение души
				mem_y = obj_menu_soul.y;
				obj_menu_soul.UID_mode = true; //можем выбрать действие с предметом
				obj_menu_soul.UID_select = 1; //по умолчанию перемещаем душу к действию Use
				obj_menu_soul.x = global.camera_x + 203;
				obj_menu_soul.y = global.camera_y + 380;
			}
			else { //если предмет уже выбран и мы совершаем с ним действие
				var _box_y = box_y_check();
				instance_create_depth(global.camera_x + 65, global.camera_y+ _box_y, -9999, obj_item_action); //создаем действие с предметом
				obj_item_action.item_number = _item_number; //сообщаем номер предмета инвентаря
				obj_item_action.action_type = obj_menu_soul.UID_select; //сообщаем тип действия
				//obj_Patience.in_menu = false;
				//obj_Patience.can_move = true;
				obj_menu_soul.action = true; //сообщаем, что выполняем действие
				instance_destroy(obj_menu_soul); //уничтожаем душу меню
				instance_destroy(obj_in_game_menu); //уничтожаем меню
				instance_destroy(); //уничтожаем подменю предметов
			}
		}
	}
	else if obj_menu_soul.sub_menu == 4 {
		if obj_menu_soul.UID_mode == false { //если предмет ещё не выбран
			audio_play_sound(snd_menu_select, 10, 0);
			mem_x = obj_menu_soul.x; //запоминаем положение души
			mem_y = obj_menu_soul.y;
			obj_menu_soul.UID_mode = true; //можем выбрать действие с предметом
			obj_menu_soul.UID_select = 1; //по умолчанию перемещаем душу к действию Use
			obj_menu_soul.x = global.camera_x + 203;
			obj_menu_soul.y = global.camera_y + 380;
		}
		else { //если предмет уже выбран и мы совершаем с ним действие
			var _box_y = box_y_check();
			instance_create_depth(global.camera_x + 65, global.camera_y+ _box_y, -9999, obj_key_item_info_box); //создаем действие с предметом
			obj_key_item_info_box.dialogue_end = global.key_items[_key_item_index].text_end;
			for (var _i = 0; _i <= obj_key_item_info_box.dialogue_end; _i++) {
				obj_key_item_info_box.dialogue[_i] = global.key_items[_key_item_index].info_text[_i];
			}
			with (obj_key_item_info_box) {
				dialogue_length = string_length(dialogue[dialogue_current]);
			}
			//obj_menu_soul.action = true; //сообщаем, что выполняем действие
			instance_destroy(obj_menu_soul); //уничтожаем душу меню
			instance_destroy(obj_in_game_menu); //уничтожаем меню
			instance_destroy(); //уничтожаем подменю предметов
		}
	}
}