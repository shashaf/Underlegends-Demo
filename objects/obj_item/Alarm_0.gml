/// @description Использование в бою
// You can write your code in this editor
var _item_number = obj_battle_manager.selected_item;
//obj_battleManager.selected_item = 7; //почему-то этот alarm[0] вызывается несколько раз, поэтому в первом вызове я меняю item на последний, чтобы эффекта не было


if obj_battle_manager.item_used == false {
	obj_battle_manager.item_used = true; //почему-то этот alarm[0] вызывается несколько раз, поэтому в первом вызове я меняю на true, чтобы эффекта не было
	if item_type == 0 {
		obj_battle_manager.current_text = battle_use_text;
		//obj_battleManager.alarm[2] = 120;
		audio_play_sound(snd_heal, 10, 0);
		global.player_hp += item_heals;
		if global.player_hp > global.player_max_hp
			global.player_hp = global.player_max_hp;
		obj_battle_manager.hp_bar_width_yellow = global.player_hp;
		if _item_number == 7 { //если мы использовали 8 предмет
			global.item_IDs[_item_number] = 0;
			global.items[_item_number] = obj_empty_item; //то 8 предмет заменяем на пустой
		}
		else { //если мы использовали предмет под номером от 1 до 7
			for (var _i = _item_number + 1; _i <= 7; _i++) { //проходим цикл от выбранного предмета до конца инвентаря
				global.items[_i-1] = global.items[_i]; //сдвигаем предметы на 1
				global.item_IDs[_i-1] = global.item_IDs[_i];
				if _i == 7 { //последний предмет делаем пустым
					global.items[_i] = obj_empty_item;
					global.item_IDs[_i] = 0;
				}
			}
		}
	}

	else if item_type == 1 {
		obj_battle_manager.current_text = "* You equipped the " + item_name + ".";
		if global.language == "rus" {
			obj_battle_manager.current_text = "* Вы экипировали " + item_name + ".";
		}
		//obj_battleManager.alarm[2] = 120;
		var _temp = global.player_weapon;
		global.player_weapon = global.items[_item_number];
		global.item_attack = weapon_attack;
		global.player_weapon_index = weapon_index;
		if _temp != obj_hand {
			global.items[_item_number] = _temp;
			global.item_IDs[_item_number] = _temp.item_index;
		}
		else {
			global.items[_item_number] = obj_empty_item;
			global.item_IDs[_item_number] = 0;
			for (var _i = _item_number + 1; _i <= 7; _i++) { //проходим цикл от выбранного предмета до конца инвентаря
				global.items[_i-1] = global.items[_i]; //сдвигаем предметы на 1
				global.item_IDs[_i-1] = global.item_IDs[_i];
				if _i == 7 { //последний предмет делаем пустым
					global.items[_i] = obj_empty_item;
					global.item_IDs[_i] = 0;
				}
			}
		}
		obj_battle_manager.attack_power = global.player_attack + global.item_attack;
	}

	else if item_type == 2 {
		obj_battle_manager.current_text = "* You equipped the " + item_name + ".";
		if global.language == "rus" {
			obj_battle_manager.current_text = "* Вы экипировали " + item_name + ".";
		}
		//obj_battleManager.alarm[2] = 120;
		var _temp = global.player_armor;
		global.player_armor = global.items[_item_number];
		global.item_defence = armor_defence;
		global.player_armor_index = armor_index;
		
		if _temp != obj_bandage_armor {
			global.items[_item_number] = _temp;
			global.item_IDs[_item_number] = _temp.item_index;
		}
		else {
			global.items[_item_number] = obj_bandage_heal;
			global.item_IDs[_item_number] = obj_bandage_heal.item_index;
		}
		obj_battle_manager.defence_power = global.player_defence + global.item_defence;
	}
}


