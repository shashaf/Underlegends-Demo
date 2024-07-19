if instance_exists(obj_soul_battle) {
	switch (battle_state) {
		case "calm":
			if obj_patience.battle_type != 0 {
				if (selected_button != 4) {
					if (selected_button == 2 and global.item_IDs[0] = 0) {
						selected_button += 2;
						obj_soul_battle.x += 158 * 2;
					}
					else {
						selected_button++;
						obj_soul_battle.x += 158;
					}
				}
				else {
					selected_button = 1;
					obj_soul_battle.x = 49;
				}
				check_selected_button(selected_button);
				audio_play_sound(snd_menu_move, 10, 0);
			}
			else {
				switch (selected_button) {
					case 1:
						selected_button++;
						audio_play_sound(snd_menu_move, 10, 0);
						//obj_soul_battle.x += 158;
						break;
					case 2:
						if obj_button_item.y == 432 { //если есть кнопка Item
							if  global.item_IDs[0] != 0 { //если есть предметы, переходим на кнопку предметы
								selected_button++;
								audio_play_sound(snd_menu_move, 10, 0);
								//obj_soul_battle.x += 158;
							}
							else if obj_button_mercy.y == 432 { //если предметов нет, но есть кнопка Mercy, идём на неё
								selected_button+=2;
								audio_play_sound(snd_menu_move, 10, 0);
								//obj_soul_battle.x += 158 * 2;
							}
							else if obj_button_fight.y == 432 { //если нет предметов и кнопки Mercy, но есть кнопка Fight, идём на неё
								selected_button--;
								audio_play_sound(snd_menu_move, 10, 0);
							}
						}
						else if obj_button_fight.y == 432 { //если нет кнопки Item и есть кнопка Fight
							selected_button--;
							audio_play_sound(snd_menu_move, 10, 0);
						}
						break;
					case 3:
						if obj_button_mercy.y == 432 { //если есть кнопка Mercy, то переходим на неё
							selected_button++;
							audio_play_sound(snd_menu_move, 10, 0);
						}
						else { //если нет, то на кнопку Fight
							selected_button-=2;
							audio_play_sound(snd_menu_move, 10, 0);
						}
						break;
					case 4:
						selected_button = 1;
						audio_play_sound(snd_menu_move, 10, 0);
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
					selected_item = 1;
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
					selected_item = 0;
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




