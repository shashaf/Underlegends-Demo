if instance_exists(obj_soul_battle) {
	switch (battle_state) {
		case "calm":
			if obj_patience.battle_type != 0 { //если не обучение
				if (selected_button != 1) {
					if (selected_button == 4 and global.item_IDs[0] = 0) {
						selected_button -= 2;
						obj_soul_battle.x -= 158 * 2;
						audio_play_sound(snd_menu_move, 10, 0);
					}
					else {
					//else if selected_button == 2 {
						if obj_button_fight.y == 432 {
							selected_button--;
							obj_soul_battle.x -= 158;
							audio_play_sound(snd_menu_move, 10, 0);
						}
					}
				}
				else {
					selected_button = 4;
					obj_soul_battle.x = 49 + 158*3;
					audio_play_sound(snd_menu_move, 10, 0);
				}
				check_selected_button(selected_button);	
			}
			else {
				switch (selected_button) {
					case 1:
						var _rightest_button = 4;
						if obj_button_mercy.y != 432 { //если нет кнопки Mercy, то самая правая это Item
							_rightest_button--;
						}
						if (obj_button_item.y != 432 or global.item_IDs[0] == 0) and _rightest_button < 4 { //если при этом нет предметов, то Act
							_rightest_button--;
						}
						selected_button = _rightest_button;
						audio_play_sound(snd_menu_move, 10, 0);
						break;
					case 2:
						if obj_button_fight.y == 432 { //если есть кнопка Fight, идём на неё
							selected_button--;
							audio_play_sound(snd_menu_move, 10, 0);
						}
						break;
					case 3:
						selected_button--;
						audio_play_sound(snd_menu_move, 10, 0);
						break;
					case 4:
						if global.item_IDs[0] != 0 { //если есть предметы, то на кнопку Item
							selected_button --;
							audio_play_sound(snd_menu_move, 10, 0);
						}
						else { //если нет предметов, то на Act
							selected_button-=2;
							audio_play_sound(snd_menu_move, 10, 0);
						}
						break;
				}
				check_selected_button(selected_button);	
			}
			break;
		case "fightPressedMonsterChoosed":
			if can_use_skill == true {
				if (patience == true) {
					obj_soul_battle.x = x + 37;
				}
				else {
					obj_soul_battle.x = x + 37 + 265;
				}
				patience = !patience;
				audio_play_sound(snd_menu_move, 10, 0);
			}
			break;
		case "actPressedMonsterChoosed":
			if enemies[selected_enemy].act2 != "" {
				audio_play_sound(snd_menu_move, 10, 0);
				switch (selected_act) {
					case 0:
						selected_act = 1;
						break;
					case 1:
						selected_act = 0;
						break;
					case 2:
						if (enemies[selected_enemy].act4 != "") {
							selected_act = 3;
						}
						else {
							selected_act = 1;
						}
						break;
					case 3:
						selected_act = 2;
						break;
				}
			}
			check_selected_act(selected_act);
			break;
	
		case "itemPressed":
			switch (selected_item) {
				case 0:
					if (global.items[1].item_battle_name != "") {
						audio_play_sound(snd_menu_move, 10, 0);
						selected_item++;
						break;
					}
					else {
						break;
					}
				case 1:
					audio_play_sound(snd_menu_move, 10, 0);
					selected_item--;
					break;
				case 2:
					if (global.items[3].item_battle_name != "") {
						audio_play_sound(snd_menu_move, 10, 0);
						selected_item++;
						break;
					}
					else {
						audio_play_sound(snd_menu_move, 10, 0);
						selected_item--;
						break;
					}
				case 3:
					audio_play_sound(snd_menu_move, 10, 0);
					selected_item--;
					break;
				case 4:
					if (global.items[5].item_battle_name != "") {
						audio_play_sound(snd_menu_move, 10, 0);
						selected_item++;
						break;
					}
					else {
						audio_play_sound(snd_menu_move, 10, 0);
						selected_item--;
						break;
					}
				case 5:
					audio_play_sound(snd_menu_move, 10, 0);
					selected_item--;
					break;
				case 6:
					if (global.items[7].item_battle_name != "") {
						audio_play_sound(snd_menu_move, 10, 0);
						selected_item++;
						break;
					}
					else {
						audio_play_sound(snd_menu_move, 10, 0);
						selected_item--;
						break;
					}
				case 7:
					audio_play_sound(snd_menu_move, 10, 0);
					selected_item--;
					break;
				default:
					audio_play_sound(snd_menu_move, 10, 0);
					selected_item = 0;
					break;
			}
			check_selected_item(selected_item);
			break;
	}
}





