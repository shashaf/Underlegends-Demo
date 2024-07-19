if instance_exists(obj_soul_battle) {
	if (battle_state = "fightPressedMonsterNotChoosed" or battle_state == "actPressedMonsterNotChoosed") {
		audio_play_sound(snd_menu_move, 10, 0);
		if (selected_enemy!= 2 and (enemies[selected_enemy+1]) != noone) {
			selected_enemy++;
			obj_soul_battle.y += 32;
		}
		else {
			selected_enemy = 0;
			obj_soul_battle.y = y + 35;
		}
		check_selected_enemy(selected_enemy);
	}

	else if (battle_state = "itemPressed") {
		switch (selected_item) {
			case 0:
				if (global.items[2].item_battle_name != "") {
					audio_play_sound(snd_menu_move, 10, 0);
					selected_item +=2;
					break;
				}
				else {
					break;
				}
			case 1:
				if (global.items[3].item_battle_name != "") {
					audio_play_sound(snd_menu_move, 10, 0);
					selected_item +=2;
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
				if (global.items[4].item_battle_name != "") {
					audio_play_sound(snd_menu_move, 10, 0);
					selected_item +=2;
					break;
				}
				else {
					audio_play_sound(snd_menu_move, 10, 0);
					selected_item = 0;
					break;
				}
			case 3:
				if (global.items[5].item_battle_name != "") {
					audio_play_sound(snd_menu_move, 10, 0);
					selected_item = 5;
					break;
				}
				else if (global.items[4].item_battle_name != "") {
					audio_play_sound(snd_menu_move, 10, 0);
					selected_item = 4;
					break;	
				}
				else {
					audio_play_sound(snd_menu_move, 10, 0);
					selected_item = 1;
					break;
				}
			case 4:
				if (global.items[6].item_battle_name != "") {
					audio_play_sound(snd_menu_move, 10, 0);
					selected_item = 6;
					break;
				}
				else {
					selected_item = 0;
					audio_play_sound(snd_menu_move, 10, 0);
					break;
				}
			case 5:
				if (global.items[7].item_battle_name != "") {
					audio_play_sound(snd_menu_move, 10, 0);
					selected_item = 7;
					break;
				}
				else if global.items[6].item_battle_name != "" {
					audio_play_sound(snd_menu_move, 10, 0);
					selected_item = 6;
					break;
				}
				else {
					audio_play_sound(snd_menu_move, 10, 0);
					selected_item = 1;
					break;
				}
			case 6:
				selected_item = 0;
				audio_play_sound(snd_menu_move, 10, 0);
				break;
			case 7:
				selected_item = 1;
				audio_play_sound(snd_menu_move, 10, 0);
				break;
		}
		check_selected_item(selected_item);
	}
	else if (battle_state == "actPressedMonsterChoosed") {
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
		check_selected_act(selected_act);
	}
	else if (battle_state == "mercyPressed") {
		if can_flee = true {
			spare = !spare;
			audio_play_sound(snd_menu_move, 10, 0);
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