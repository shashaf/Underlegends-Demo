//изменение размеров рамки
border_right = x + border_width;
if border_width > new_border_width { //сужение рамки справа
	if (abs(border_width - new_border_width) > 28) {
		border_width -= 40;
		if instance_exists(obj_soul_battle) {
			if ((obj_soul_battle.x+8) > (x + border_width - 4) and battle_state == "dodging")
				obj_soul_battle.x-=20; //сдвиг души влево при необходимости
		}
	}
	else {
		border_width = new_border_width;
		if instance_exists(obj_soul_battle) {
			if ((obj_soul_battle.x+8) > (x + border_width - 4) and battle_state == "dodging")
				obj_soul_battle.x = x + border_width - 4 - 8; //сдвиг души в правый край при необходимости
		}
	}
	if x < new_border_left { //сужение рамки слева
		if (abs(x - new_border_left) > 28) {
			x += 20;
			if instance_exists(obj_soul_battle) {
				if ((obj_soul_battle.x-8) < (x + 4) and battle_state == "dodging") //сдвиг души вправо при необходимости
					obj_soul_battle.x+=20;
			}
		}
		else {
			x = new_border_left;
			if instance_exists(obj_soul_battle) {
				if ((obj_soul_battle.x-8) < (x + 4) and battle_state == "dodging")
					obj_soul_battle.x = x + 4 + 8; //сдвиг души в левый край при необходимости
			}
		}
	}
}


if border_width < new_border_width { //расширение рамки вправо
	if (abs(border_width - new_border_width) > 28) {
		border_width += 40;
		if instance_exists(obj_soul_battle) {
			if ((obj_soul_battle.x-8) < (x + 4) and battle_state == "dodging") //сдвиг души вправо при необходимости
				obj_soul_battle.x+=20;
		}
	}
	else {
		border_width = new_border_width;
		if instance_exists(obj_soul_battle) {
			if ((obj_soul_battle.x-8) < (x + 4) and battle_state == "dodging")
				obj_soul_battle.x = x + 4 + 8; //сдвиг души в левый край при необходимости
		}
	}
	if x > new_border_left { //расширение рамки влево
		if (abs(x - new_border_left) > 28) {
			x -= 20;
			if instance_exists(obj_soul_battle) {
				if ((obj_soul_battle.x+8) > (x + border_width - 4) and battle_state == "dodging")
					obj_soul_battle.x-=20; //сдвиг души влево при необходимости
			}
		}
		else {
			x = new_border_left;
			if instance_exists(obj_soul_battle) {
				if ((obj_soul_battle.x+8) > (x + border_width - 4) and battle_state == "dodging")
					obj_soul_battle.x = x + border_width - 4 - 8; //сдвиг души в правый край при необходимости
			}
		}
	}
}

//логика состояний битвы
switch (battle_state) {
	case "calm":
		new_border_left = 32;
		new_border_width = 580;
		
		if characters < string_length(current_text) and border_width == new_border_width and x == new_border_left { //если фраза не вся на экране
			characters += increase;
			text_to_draw = string_copy(current_text, 0, characters);
	
			var _character = string_char_at(current_text, characters);
			
			if (_character != " ") and letter > 1 {
				audio_play_sound(snd_text, 20, 0);
				letter = 0;
			}
			
			if _character == "," or _character == "*" or _character == "." {
				increase = 0.2;
			}
			else {
				increase = 1;
			}
			letter += increase;
		}
		
		if enter_z_check() and x == new_border_left {
			audio_play_sound(snd_menu_select, 10, 0);
			switch (selected_button) {
				case 1:
					battle_state = "fightPressedMonsterNotChoosed";
					check_selected_enemy(selected_enemy);
					break;
				case 2:
					battle_state = "actPressedMonsterNotChoosed";
					check_selected_enemy(selected_enemy);
					break;
				case 3:
					battle_state = "itemPressed";
					check_selected_item(selected_item);
					break;
				case 4:
					battle_state = "mercyPressed";
					if instance_exists(obj_soul_battle) {
						obj_soul_battle.x = x + 37;
						obj_soul_battle.y = y + 35;
					}
					for (var _i = 0; _i < 3; _i++) {
						if (enemies[_i]!= noone and enemies[_i].can_be_spared == true) {
							can_spare = true;
							break;
						}
					}
					break;
				default:
					battle_state = "actPressed";
					check_selected_enemy(selected_enemy);
					break;
			}
			pause = true;
			alarm[0] = 2;
		}
		break;
	case "fightPressedMonsterNotChoosed":
		if ((enter_z_check()) and (pause == false)) {
			audio_play_sound(snd_menu_select, 10, 0);
			patience = false;
			obj_soul_battle.x = x + 37;
			obj_soul_battle.y = y + 35;
			battle_state = "fightPressedMonsterChoosed";
			pause = true;
			alarm[0] = 2;
		}
		if shift_x_check() or ctrl_c_check() {
			audio_play_sound(snd_menu_select, 10, 0);
			battle_state = "calm";
			check_selected_button(selected_button);
			selected_enemy = 0;
			obj_soul_battle.x = soul_start_x;
			obj_soul_battle.y = soul_start_y;
		}
		break;
	case "fightPressedMonsterChoosed":
		if ((enter_z_check()) and (pause == false)) {
			audio_play_sound(snd_menu_select, 10, 0);
			if (patience == true) {
				text_to_draw = "";
				characters = 0;
				obj_soul_battle.x = soul_start_x;
				obj_soul_battle.y = soul_start_y;
				battle_state = "patience";
				current_text = patience_text;
				//current_text = "* You remain patient.`n* Your DEFENCE has increased`n  for this turn.";
				//if global.language == "rus" {
					//current_text = "* Вы сохраняете терпение.`n* Ваша ЗАЩИТА увеличилась`n  на этом ходу.";
					//current_text = "* Вы сохраняете терпение.`n* Ваша ЗАЩИТА увеличилась`n  на этом ходу.";
				//}
				switch (global.skill) {
					case 1:
						defence_power+=2;
						break;
					case 2:
						has_blue_skill = true;
						if !instance_exists(obj_blue_skill) {
							instance_create_depth(64, 80, obj_enemy.depth, obj_blue_skill);
						}
						break;
					case 3:
						purple_skill = true;
						break;
				}
				//alarm[2] = 120;
			}
			else {
				text_to_draw = "";
				characters = 0;
				obj_soul_battle.x = soul_start_x;
				obj_soul_battle.y = soul_start_y;
				battle_state = "attack";
				
				instance_create_depth(x + 35, y + border_height/2, 0, obj_target);
				instance_create_depth(x + border_width - 35, y + border_height/2, -1, obj_weapon);
				//start_distance = obj_weapon.x - obj_target.x;
			}
		}
		
		if shift_x_check() or ctrl_c_check() {
			audio_play_sound(snd_menu_select, 10, 0);
			battle_state = "fightPressedMonsterNotChoosed";
			selected_enemy = 0;
			check_selected_enemy(selected_enemy);
		}
		break;
	case "attack":
		if (instance_exists(obj_target) and instance_exists(obj_weapon)) {
			var _distance = obj_weapon.x - obj_target.x;
			if (abs(_distance) > 400) {
				accuracy = 1;
			}
			else if (abs(_distance) > 300 and abs(_distance) <= 400) {
				accuracy = 2;
			}
			else if (abs(_distance) > 200 and abs(_distance) <= 300) {
				accuracy = 3;
			}
			else if (abs(_distance) > 100 and abs(_distance) <= 200) {
				accuracy = 4;
			}
			else if (abs(_distance) < 100) {
				accuracy = 5;
			}
			if ((enter_z_check()) and (pause == false)) {
				instance_create_depth(enemies[selected_enemy].x, enemies[selected_enemy].y, enemies[selected_enemy].depth - 5, obj_knife_attack);
				if enemies[selected_enemy] == obj_lemike and obj_lemike.jamed == false {
					damage = "??";
				}
				else {
					if enemies[selected_enemy] == obj_lemike and enemies[selected_enemy].enemy_current_hp <= enemies[selected_enemy].enemy_max_hp/5 {
						damage = round((enemies[selected_enemy].enemy_current_hp + random_range(1, 5)) * random_range(1, 2) * accuracy);
						enemies[selected_enemy].enemy_current_hp -= damage;
					}
					else if (enemies[selected_enemy] == obj_lemike and enemies[selected_enemy].can_be_spared == true) {
						damage = 9999;
						enemies[selected_enemy].enemy_current_hp -= damage; //наносится урон
					}
					else {
						damage = max(1, (attack_power - enemies[selected_enemy].enemy_real_df)) * (accuracy)
						enemies[selected_enemy].enemy_current_hp -= damage; //наносится урон
					}
				}
				
				if (enemies[selected_enemy] != obj_lemike and enemies[selected_enemy].enemy_current_hp <= enemies[selected_enemy].enemy_max_hp/3) { //если остаётся треть HP и меньше, можно пощадить
					enemies[selected_enemy].can_be_spared = true;
					can_spare = true;
				}
				audio_play_sound(snd_attack, 10, 0);
				instance_destroy(obj_target);
				instance_destroy(obj_weapon);
			}
		}
		break;
	case "patience":
		if characters < string_length(current_text) and border_width == new_border_width and x == new_border_left { //если фраза не вся на экране
			characters += increase;
			text_to_draw = string_copy(current_text, 0, characters);
	
			var _character = string_char_at(current_text, characters);
			
			if (_character != " ") {
				audio_play_sound(snd_text, 20, 0);
			}
			
			if _character == "," {
				increase = 0.2;
			}
			else {
				increase = 1;
			}
			if (enter_z_check() or shift_x_check() or ctrl_c_check()) {
				characters = string_length(current_text);
				text_to_draw = string_copy(current_text, 0, characters);
			}
		}
		else if obj_patience.battle_type == 0 {
			if text_skipped == false {
				text_skipped = true;
				obj_button_fight.shining = false;
				enemies[0].dialogue_current = 69;
				if global.player_hp == global.player_max_hp {
					enemies[0].dialogue_end = 73;
					//alarm[6] = 60;
				}
				else {
					enemies[0].dialogue_end = 75;
					obj_button_item.shining = true;
					tutorial_state = "Skill_no_hp";
				}
				alarm[6] = 60;
			}
		}
		else { //обычный бой
			if text_skipped == false {
				text_skipped = true;
				alarm[2] = 60;
			}
		}
		break;
	case "actPressedMonsterNotChoosed":
		if ((enter_z_check()) and (pause == false)) {
			audio_play_sound(snd_menu_select, 10, 0);
			obj_soul_battle.x = x + 37;
			obj_soul_battle.y = y + 35;
			battle_state = "actPressedMonsterChoosed";
			check_selected_act(selected_act);
			pause = true;
			alarm[0] = 2;
		}
		if shift_x_check() or ctrl_c_check() {
			audio_play_sound(snd_menu_select, 10, 0);
			battle_state = "calm";
			check_selected_button(selected_button);
			selected_enemy = 0;
			obj_soul_battle.x = soul_start_x + 158;
			obj_soul_battle.y = soul_start_y;
		}
		break;
	case "actPressedMonsterChoosed":
		if ((enter_z_check()) and (pause == false)) {
			audio_play_sound(snd_menu_select, 10, 0);
			battle_act(selected_act);
		}
		if shift_x_check() or ctrl_c_check() {
			audio_play_sound(snd_menu_select, 10, 0);
			battle_state = "actPressedMonsterNotChoosed";
			selected_enemy = 0;
			selected_act = 0;
			check_selected_enemy(selected_enemy);
		}
		break;
	case "acting":
		if characters < string_length(current_text) and border_width == new_border_width and x == new_border_left { //если фраза не вся на экране
			characters += increase;
			text_to_draw = string_copy(current_text, 0, characters);
	
			var _character = string_char_at(current_text, characters);
			
			if (_character != " ") {
				audio_play_sound(snd_text, 20, 0);
			}
			
			if _character == "," {
				increase = 0.2;
			}
			else {
				increase = 1;
			}
			if (enter_z_check() or shift_x_check() or ctrl_c_check()) {
				characters = string_length(current_text);
				text_to_draw = string_copy(current_text, 0, characters);
			}
		}
		else {
			if text_skipped == false {
				text_skipped = true;
				alarm[2] = 60;
			}
		}
		break;
	case "itemPressed":
	if ((enter_z_check()) and (pause == false)) {
			audio_play_sound(snd_menu_select, 10, 0);
			text_to_draw = "";
			characters = 0;
			battle_state = "usingItem";
			obj_soul_battle.x = soul_start_x + 158*2;
			obj_soul_battle.y = soul_start_y;
			pause = true;
			global.items[selected_item].alarm[0] = 1;
			alarm[0] = 2;//активация события использования предмета
		}
		if shift_x_check() or ctrl_c_check() {
			audio_play_sound(snd_menu_select, 10, 0);
			battle_state = "calm";
			check_selected_button(selected_button);
			obj_soul_battle.x = soul_start_x + 158*2;
			obj_soul_battle.y = soul_start_y;
			selected_item = 0;
		}
		break;
	case "usingItem":
		if characters < string_length(current_text) and border_width == new_border_width and x == new_border_left { //если фраза не вся на экране
			characters += increase;
			text_to_draw = string_copy(current_text, 0, characters);
	
			var _character = string_char_at(current_text, characters);
			
			if (_character != " ") {
				audio_play_sound(snd_text, 20, 0);
			}
			
			if _character == "," {
				increase = 0.2;
			}
			else {
				increase = 1;
			}
			if (enter_z_check() or shift_x_check() or ctrl_c_check()) {
				characters = string_length(current_text);
				text_to_draw = string_copy(current_text, 0, characters);
			}
		}
		else {
			if text_skipped == false {
				if instance_exists(obj_jam) {
					if current_text != obj_jam.battle_use_text {
						text_skipped = true;
						alarm[2] = 60;
					}
				}
				else if obj_patience.battle_type != 0 {
					text_skipped = true;
					alarm[2] = 60;
				}
				else if obj_patience.battle_type == 0 {
					if tutorial_state == "Skill_no_hp"  {
						text_skipped = true;
						attack_type = bone_attack_1;
						attack_time = 150;
						obj_soul_battle.x = new_border_left + new_border_width/2;
						obj_soul_battle.y = y + border_height/2;
						alarm[3] = 60;
					}
					else {
						text_skipped = true;
						alarm[6] = 60;
					}
				}
				
			}
		}
		break;
	case "mercyPressed":
		if ((enter_z_check()) and (pause == false)) {
			if spare == true { //Spare
				audio_play_sound(snd_menu_select, 10, 0);
				spare_enemies();
			}
			else { //Flee
				battle_state = "flee";
				current_text = flee_text;
				text_to_draw = current_text;
				alarm[0] = 2;
				audio_play_sound(snd_flee, 10, 0);
				if (earned_exp >= (global.player_exp_to_lv - global.player_exp)) {
					lv_up();
				}
				global.player_exp += earned_exp;
				obj_patience.battle_trigger = true;
			}
		}
		if shift_x_check() or ctrl_c_check() {
			audio_play_sound(snd_menu_select, 10, 0);
			battle_state = "calm";
			check_selected_button(selected_button);
			if instance_exists(obj_soul_battle) {
				obj_soul_battle.x = soul_start_x + 158*3;
				obj_soul_battle.y = soul_start_y;
			}
		}
		break;
	case "sparing":
		if characters < string_length(current_text) and border_width == new_border_width and x == new_border_left { //если фраза не вся на экране
			characters += increase;
			text_to_draw = string_copy(current_text, 0, characters);
	
			var _character = string_char_at(current_text, characters);
			
			if (_character != " ") {
				audio_play_sound(snd_text, 20, 0);
			}
			
			if _character == "," {
				increase = 0.2;
			}
			else {
				increase = 1;
			}
			if (enter_z_check() or shift_x_check() or ctrl_c_check()) {
				characters = string_length(current_text);
				text_to_draw = string_copy(current_text, 0, characters);
			}
		}
		else {
			if text_skipped == false {
				text_skipped = true;
				alarm[2] = 60;
			}
		}
		break;
	
	case "flee":
		if characters < string_length(current_text) and border_width == new_border_width and x == new_border_left { //если фраза не вся на экране
			characters += increase;
			text_to_draw = string_copy(current_text, 0, characters);
	
			var _character = string_char_at(current_text, characters);
			
			if (_character != " ") {
				audio_play_sound(snd_text, 20, 0);
			}
			
			if _character == "," {
				increase = 0.2;
			}
			else {
				increase = 1;
			}
			if (enter_z_check() or shift_x_check() or ctrl_c_check()) {
				characters = string_length(current_text);
				text_to_draw = string_copy(current_text, 0, characters);
			}
		}
		break;
	
	case "victory":
		if characters < string_length(current_text) and border_width == new_border_width and x == new_border_left { //если фраза не вся на экране
			characters += increase;
			text_to_draw = string_copy(current_text, 0, characters);
	
			var _character = string_char_at(current_text, characters);
			
			if (_character != " ") {
				audio_play_sound(snd_text, 20, 0);
			}
			
			if _character == "," {
				increase = 0.2;
			}
			else {
				increase = 1;
			}
		}
		else {
			if ((enter_z_check()) and (pause == false)) {
				obj_patience.battle_trigger = true;
			}
		}
		break;
	case "dodging":
		break;
}