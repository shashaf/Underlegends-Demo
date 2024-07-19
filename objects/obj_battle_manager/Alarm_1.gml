/// @description сброс хода
// Вы можете записать свой код в этом редакторе
if global.player_hp > 0 {
	if instance_exists(obj_bullet) {
		obj_bullet.alarm[0] = 1;
		//instance_destroy(obj_bullet);
	}
	if instance_exists(obj_battle_dialogue) {
		instance_destroy(obj_battle_dialogue);
	}
	//enemies[0].sprite_index = enemies[0].calm_sprite;
	//enemies[0].image_speed = 0;
	obj_soul_battle.image_speed = 0;
	obj_soul_battle.image_index = 0;
	battle_state = "calm";
	turn++;
	if enemies[0] == obj_lemike {
		if turn == 15 {
			obj_button_item.shining = true;
			instance_create_depth(0, 0, 0, obj_jam);
			if global.item_IDs[1] != 0 {
				global.item_IDs[2] = 24;
				global.items[2] = obj_jam;
			}
			else if global.item_IDs[0] != 0 {
				global.item_IDs[1] = 24;
				global.items[1] = obj_jam;
			}
			else {
				global.item_IDs[0] = 24;
				global.items[0] = obj_jam;
			}
		}
	}
	current_text = get_battle_text(obj_patience.battle_type, turn);
	characters = 0;
	text_to_draw = "";
	damage = "MISS";
	if global.language == "rus" {
		damage = "МИМО";
	}	
	selected_enemy = 0;
	selected_act = 0;
	selected_item = 0;
	item_used = false;
	defence_power = global.player_defence + global.item_defence;
	spare = true;
	can_spare = false;
	//obj_soul_battle.x = soul_start_x;
	//obj_soul_battle.y = soul_start_y;
	selected_button = 1;
	if obj_patience.battle_type == 0 and obj_button_fight.y != 432 {
		selected_button = 2;
	}
	new_border_left = 32; //начало рамки по x
	//border_width = 580; //ширина рамки
	new_border_width = 580; //ширина рамки
	border_height = 130; //высота рамки
	//new_border_width = border_width; //изменение ширины рамки
	obj_soul_battle.dodging = false;
	check_selected_button(selected_button);
	attack_time = 150;
	text_skipped = false;
	purple_skill = false;
}





