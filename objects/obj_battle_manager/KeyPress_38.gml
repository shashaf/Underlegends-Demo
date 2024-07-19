if instance_exists(obj_soul_battle) {
	if (battle_state = "fightPressedMonsterNotChoosed" or battle_state == "actPressedMonsterNotChoosed") {
		audio_play_sound(snd_menu_move, 10, 0);
		if (selected_enemy != 0) { 
			selected_enemy--;
			obj_soul_battle.y -= 32;
		}
		else {
			if enemies[2] != noone {
				selected_enemy = 2;
				obj_soul_battle.y = y + 35 + 32 + 32;
			}
			else if enemies[1] != noone {
				selected_enemy = 1;
				obj_soul_battle.y = y + 35 + 32;
			}
		}
		check_selected_enemy(selected_enemy);
	}
	else if (battle_state == "itemPressed") {
		switch (selected_item) {
			case 0:
				if (global.items[6].item_battle_name != "") {
					audio_play_sound(snd_menu_move, 10, 0);
					selected_item = 6;
					break;
				}
				else if (global.items[4].item_battle_name != "") {
					audio_play_sound(snd_menu_move, 10, 0);
					selected_item = 4;
					break;
				}
				else if (global.items[2].item_battle_name != "") {
					audio_play_sound(snd_menu_move, 10, 0);
					selected_item = 2;
					break;
				}
				else {
					break;
				}
			case 1:
				if (global.items[7].item_battle_name != "") {
					audio_play_sound(snd_menu_move, 10, 0);
					selected_item = 7;
					break;
				}
				else if (global.items[6].item_battle_name != "") {
					audio_play_sound(snd_menu_move, 10, 0);
					selected_item = 6;
					break;
				}
				else if (global.items[5].item_battle_name != "") {
					audio_play_sound(snd_menu_move, 10, 0);
					selected_item = 5;
					break;
				}
				else if (global.items[4].item_battle_name != "") {
					audio_play_sound(snd_menu_move, 10, 0);
					selected_item = 4;
					break;
				}	
				else if (global.items[3].item_battle_name != "") {
					audio_play_sound(snd_menu_move, 10, 0);
					selected_item = 3;
					break;
				}
				else if (global.items[2].item_battle_name != "") {
					audio_play_sound(snd_menu_move, 10, 0);
					selected_item = 2;
					break;
				}	
				else {
					break;
				}
			case 2:
				audio_play_sound(snd_menu_move, 10, 0);
				selected_item-=2;
				break;
			case 3:
				audio_play_sound(snd_menu_move, 10, 0);
				selected_item-=2;
				break;
			case 4:
				audio_play_sound(snd_menu_move, 10, 0);
				selected_item-=2;
				break;
			case 5:
				audio_play_sound(snd_menu_move, 10, 0);
				selected_item-=2;
				break;
			case 6:
				audio_play_sound(snd_menu_move, 10, 0);
				selected_item-=2;
				break;
			case 7:
				audio_play_sound(snd_menu_move, 10, 0);
				selected_item-=2;
				break;
		}
		check_selected_item(selected_item);
	}
	else if (battle_state == "actPressedMonsterChoosed") {
		if enemies[selected_enemy].act2 != "" {
			audio_play_sound(snd_menu_move, 10, 0);
			switch (selected_act) {
				case 0:
					selected_act = 2;
					break;
				case 1:
					if (enemies[selected_enemy].act4 != "") {
						selected_act = 3;
					}
					else {
						selected_act = 2;
					}
					break;
				case 2:
					selected_act = 0;
					break;
				case 3:
					selected_act = 1;
					break;
			}
		}
		check_selected_act(selected_act);
	}
	else if (battle_state == "mercyPressed") {
		if (can_flee == true) {
			audio_play_sound(snd_menu_move, 10, 0);
			spare = !spare;
		}
		if (spare == true) {
			obj_soul_battle.x = x + 37;
			obj_soul_battle.y = y + 35;
		}
		else if (can_flee == true) {
			obj_soul_battle.x = x + 37;
			obj_soul_battle.y = y + 35 + 32;	
		}
	}
}