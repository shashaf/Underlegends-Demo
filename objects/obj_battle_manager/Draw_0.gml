draw_set_color(c_white);

if global.debug == true { //дебаг мод
	//draw_text(20, 20, "Mouse: " + string(mouse_x) + " " + string(mouse_y));
	draw_set_font(fnt_battle_text);
	if global.language == "rus" {
		if (enemies[0] != noone) {
			//var enemiesHP = "Enemies HP: " + string(enemies[0].enemy_current_hp);
			draw_text(enemies[0].x - 100, enemies[0].y - 105, "ATK ЗАЩ ОЗ\n" +  string(enemies[0].enemy_at) + "   " + string(enemies[0].enemy_real_df) + "   " + string(enemies[0].enemy_current_hp));
			if (enemies[1] != noone) {
				//enemiesHP = enemiesHP + "  " + string(enemies[1].enemy_current_hp);
				draw_text(enemies[1].x - 100, enemies[1].y - 105, "ATK ЗАЩ ОЗ\n" +  string(enemies[1].enemy_at) + "   " + string(enemies[1].enemy_real_df) + "   " + string(enemies[1].enemy_current_hp));
				if (enemies[2] != noone) {
					//enemiesHP = enemiesHP + "  " + string(enemies[2].enemy_current_hp);
					draw_text(enemies[2].x - 100, enemies[0].y - 105, "ATK ЗАЩ ОЗ\n" +  string(enemies[2].enemy_at) + "   " + string(enemies[2].enemy_real_df) + "   " + string(enemies[2].enemy_current_hp));
				}
			}
			//draw_text(250, 20, enemiesHP);
		}
		draw_text(20, 20, "Вы - ATK: " + string(attack_power) + " ЗАЩ: " + string(defence_power));
	}
	else {
		if (enemies[0] != noone) {
			//var enemiesHP = "Enemies HP: " + string(enemies[0].enemy_current_hp);
			draw_text(enemies[0].x - 100, enemies[0].y - 105, "ATK DEF HP\n" +  string(enemies[0].enemy_at) + "   " + string(enemies[0].enemy_real_df) + "   " + string(enemies[0].enemy_current_hp));
			if (enemies[1] != noone) {
				//enemiesHP = enemiesHP + "  " + string(enemies[1].enemy_current_hp);
				draw_text(enemies[1].x - 100, enemies[1].y - 105, "ATK DEF HP\n" +  string(enemies[1].enemy_at) + "   " + string(enemies[1].enemy_real_df) + "   " + string(enemies[1].enemy_current_hp));
				if (enemies[2] != noone) {
					//enemiesHP = enemiesHP + "  " + string(enemies[2].enemy_current_hp);
					draw_text(enemies[2].x - 100, enemies[0].y - 105, "ATK DEF HP\n" +  string(enemies[2].enemy_at) + "   " + string(enemies[2].enemy_real_df) + "   " + string(enemies[2].enemy_current_hp));
				}
			}
			//draw_text(250, 20, enemiesHP);
		}
		draw_text(20, 20, "You - ATK: " + string(attack_power) + " DEF: " + string(defence_power));
	}
	
	//draw_text(obj_buttonItem.x, obj_buttonMercy.y - obj_buttonMercy.sprite_height, "You - ATK: " + string(attack_power) + " DEF: " + string(defence_power));
	//draw_text(150, 50, "DEF: " + string(defence_power));
	//if (instance_exists(obj_target) and instance_exists(obj_weapon)) {
	//	var distance = obj_weapon.x - obj_target.x;
		//draw_text(20, 50, "_start distance: " + string(startDistance));
		//draw_text(20, 50, "Accuracy: " + string(accuracy));
		//draw_text(20, 100, "Distance: " + string(distance));
}

draw_rectangle(x, y, border_right, y + border_height, true); //отрисовка рамки
draw_rectangle(x+1, y+1, border_right-1, y + border_height-1, true);
draw_rectangle(x+2, y+2, border_right-2, y + border_height-2, true);
draw_rectangle(x+3, y+3, border_right-3, y + border_height-3, true);

var _x1 = obj_button_act.x + obj_button_act.sprite_width/2 + 32
var _y1 = obj_button_act.y - 32;
if obj_patience.battle_type == 0 {
	_y1 = 400;
}
var _x2 = _x1 + hp_bar_width_red;

var _hp_string;
if global.player_hp < 10 { //здоровье игрока
	_hp_string = "0" + string(global.player_hp);
}
else {
	_hp_string = string(global.player_hp);
}

if global.player_hp > 0 { //прочая информация о состоянии игрока
	draw_set_font(fnt_battle);
	//draw_text(obj_button_fight.x, obj_button_fight.y - 36, global.human_1_name + "     LV " + string(global.player_lv));
	draw_text(32, 432 - 36, global.human_1_name + "     LV " + string(global.player_lv));

	//draw_text(_x2 + 15, obj_button_fight.y - 36, _hp_string + " / " + string(global.player_max_hp));
	draw_text(_x2 + 15, 432 - 36, _hp_string + " / " + string(global.player_max_hp));
	draw_set_font(fnt_battle_hp);
	//draw_text(obj_button_act.x + obj_button_act.sprite_width/2 + 2, obj_button_act.y - 30, "hp");
	draw_text(190 + obj_button_act.sprite_width/2 + 2, 432 - 30, "hp");

	draw_rectangle_color(_x1, _y1, _x1 + hp_bar_width_red, _y1 + 18, c_red, c_red, c_red, c_red, false);
	draw_rectangle_color(_x1, _y1, _x1 + hp_bar_width_yellow, _y1 + 18, c_yellow, c_yellow, c_yellow, c_yellow, false);
}
	
switch (battle_state) {
	case "calm":
		draw_set_font(fnt_battle_text);
		//draw_text(x + 25, y + 20, text_to_draw);
		symbols = 1;
		width = 0
		row = 0;

		while (symbols <= string_length(current_text)) {
			//var symbol = string_char_at(text, symbols);
			while (string_char_at(text_to_draw, symbols) == "`") {
				symbols++;
				switch(string_char_at(text_to_draw, symbols)) {
					case "n":
						row++;
						width = 0;
						break;
					case "y":
						draw_set_color(c_yellow);
						break;
					case "g":
						draw_set_color(c_green);
						break;
					case "r":
						draw_set_color(c_red);
						break;
					case "w":
						draw_set_color(c_white);
						break;
				}
				symbols++;
			}
			draw_text(x + 25 + width, y + 20 + row * text_height, string_char_at(text_to_draw, symbols));
			width += string_width(string_char_at(text_to_draw, symbols));
			symbols++;
		}
		break;
	case "fightPressedMonsterNotChoosed":
		draw_set_font(fnt_battle_text);
		if enemies[0].can_be_spared == true 
			draw_text_color(x + 65, y + 20, "* " + string(enemies[0].enemy_name), c_yellow, c_yellow, c_yellow, c_yellow, 1);
		else
			draw_text(x + 65, y + 20, "* " + string(enemies[0].enemy_name));
		if enemies[0] != obj_lemike or obj_lemike.jamed == true {
			var _target = enemies[0];
			var _hp_bar_coeff = 1;
			if _target.enemy_max_hp < 100 {
				_hp_bar_coeff = 2;
			}
			else if _target.enemy_max_hp > 100 {
				_hp_bar_coeff = 1 / (_target.enemy_max_hp / 100);
			}
			draw_rectangle_color(x + 65 + 65 + 250, y + 25, x + 65 + 65 + 250 + enemies[0].enemy_max_hp * _hp_bar_coeff, y + 25 + 18, c_red, c_red, c_red, c_red, false);
			draw_rectangle_color(x + 65 + 65 + 250, y + 25, x + 65 + 65 + 250 + enemies[0].enemy_current_hp * _hp_bar_coeff, y + 25 + 18, c_lime, c_lime, c_lime, c_lime, false);
		}
		if enemies[1] != noone { //если в битве 2 врага
			if enemies[1].can_be_spared == true 
				draw_text_color(x + 65, y + 20, "\n* " + string(enemies[1].enemy_name), c_yellow, c_yellow, c_yellow, c_yellow, 1);
			else
				draw_text(x + 65, y + 20, "\n* " + string(enemies[1].enemy_name));
			if enemies[2] != noone { //если в битве 3 врага
				var _target = enemies[2];
				var _hp_bar_coeff = 1;
				if _target.enemy_max_hp < 100 {
					_hp_bar_coeff = 2;
				}
				else if _target.enemy_max_hp > 100 {
					_hp_bar_coeff = 1 / (_target.enemy_max_hp / 100);
				}
				if enemies[2].can_be_spared == true 
					draw_text_color(x + 65, y + 20, "\n\n* " + string(enemies[2].enemy_name), c_yellow, c_yellow, c_yellow, c_yellow, 1);
				else
					draw_text(x + 65, y + 20, "\n\n* " + string(enemies[2].enemy_name));
				draw_rectangle_color(x + 65 + 65 + 250, y + 25 + 32 + 32, x + 65 + 65 + 250 + enemies[2].enemy_max_hp * _hp_bar_coeff, y + 25 + 18 + 32 + 32, c_red, c_red, c_red, c_red, false);
				draw_rectangle_color(x + 65 + 65 + 250, y + 25 + 32 + 32, x + 65 + 65 + 250 + enemies[2].enemy_current_hp * _hp_bar_coeff, y + 25 + 18 + 32 + 32, c_lime, c_lime, c_lime, c_lime, false);
			}
			var _target = enemies[1];
			var _hp_bar_coeff = 1;
			if _target.enemy_max_hp < 100 {
				_hp_bar_coeff = 2;
			}
			else if _target.enemy_max_hp > 100 {
				_hp_bar_coeff = 1 / (_target.enemy_max_hp / 100);
			}
			draw_rectangle_color(x + 65 + 65 + 250, y + 25 + 32, x + 65 + 65 + 250 + enemies[1].enemy_max_hp * _hp_bar_coeff, y + 25 + 18 + 32, c_red, c_red, c_red, c_red, false);
			draw_rectangle_color(x + 65 + 65 + 250, y + 25 + 32, x + 65 + 65 + 250 + enemies[1].enemy_current_hp * _hp_bar_coeff, y + 25 + 18 + 32, c_lime, c_lime, c_lime, c_lime, false);
		}
		break;
		
	case "fightPressedMonsterChoosed":
		draw_set_font(fnt_battle_text);
		if global.language == "rus" {
			draw_text(x + 65, y + 20, "* Атака");
			if can_use_skill == true {
				//if obj_patience.battle_type == 0 {
					draw_text_color(x + 65 + 265, y + 20, "* Терпение", c_aqua, c_aqua, c_blue, c_blue, 1);
				//}
				//else {
					//draw_text(x + 65 + 265, y + 20, "* Терпение");
				//}
			}
		}
		else {
			draw_text(x + 65, y + 20, "* Attack");
			if can_use_skill == true {
				//if obj_patience.battle_type == 0 {
					draw_text_color(x + 65 + 265, y + 20, "* Patience", c_aqua, c_aqua, c_blue, c_blue, 1);
				//}
				//else {
					//draw_text(x + 65 + 265, y + 20, "* Patience");
				//}
			}
		}
		break;
	
	case "attack":
		if instance_exists(enemies[selected_enemy]) and !instance_exists (obj_target) {// and enemies[selected_enemy].shaking == true {
			var _target = enemies[selected_enemy];
			draw_set_font(fnt_damage);
			if damage != "MISS" and damage != "МИМО" {
				draw_set_color(c_red);
			}
			else {
				draw_set_color(c_gray);
			}
			if !instance_exists(obj_battle_dialogue) {
				if damage == "МИМО" {
					draw_set_font(fnt_damage_rus);
				}
				draw_text(_target.x + _target.sprite_width/2, _target.y - 90, string(damage));
			}
			if ((_target != obj_lemike or obj_lemike.jamed == true) and _target.shaking == true) {
				var _hp_bar_coeff = 1;
				if _target.enemy_max_hp < 100 {
					_hp_bar_coeff = 2.5;
				}
				else if _target.enemy_max_hp > 100 {
					_hp_bar_coeff = 1 / (_target.enemy_max_hp / 100);
				}
				draw_rectangle_color(_target.x - 10 - _target.sprite_width/2, _target.y + sprite_height/4, _target.x - 10 - _target.sprite_width/2 + _target.enemy_max_hp * _hp_bar_coeff,  _target.y + sprite_height/4 + 18, c_gray, c_gray, c_gray, c_gray, false);
				draw_rectangle_color(_target.x - 10 - _target.sprite_width/2, _target.y + sprite_height/4, _target.x - 10 - _target.sprite_width/2 + _target.enemy_current_hp * _hp_bar_coeff, _target.y + sprite_height/4 + 18,c_lime, c_lime, c_lime, c_lime, false);
			}
		}
		//draw_set_font(fnt_battle_text);
		//draw_text(x + 25, y + 20, text_to_draw);
		break;
	
	case "patience":
		draw_set_font(fnt_battle_text);
		//draw_text(x + 25, y + 20, text_to_draw);
		symbols = 1;
		width = 0
		row = 0;

		while (symbols <= string_length(current_text)) {
			//var symbol = string_char_at(text, symbols);
			while (string_char_at(text_to_draw, symbols) == "`") {
				symbols++;
				switch(string_char_at(text_to_draw, symbols)) {
					case "n":
						row++;
						width = 0;
						break;
					case "y":
						draw_set_color(c_yellow);
						break;
					case "g":
						draw_set_color(c_green);
						break;
					case "w":
						draw_set_color(c_white);
						break;
					case "b":
						draw_set_color (c_aqua);
						break;
				}
				symbols++;
			}
			draw_text(x + 25 + width, y + 20 + row * text_height, string_char_at(text_to_draw, symbols));
			width += string_width(string_char_at(text_to_draw, symbols));
			symbols++;
		}
		break;
	
	case "actPressedMonsterNotChoosed":
		
		draw_set_font(fnt_battle_text);
		if enemies[0].can_be_spared == true 
			draw_text_color(x + 65, y + 20, "* " + string(enemies[0].enemy_name), c_yellow, c_yellow, c_yellow, c_yellow, 1);
		else
			draw_text(x + 65, y + 20, "* " + string(enemies[0].enemy_name));
		if enemies[0] != obj_lemike or obj_lemike.jamed == true {
			var _target = enemies[0];
			var _hp_bar_coeff = 1;
			if _target.enemy_max_hp < 100 {
				_hp_bar_coeff = 2;
			}
			else if _target.enemy_max_hp > 100 {
				_hp_bar_coeff = 1 / (_target.enemy_max_hp / 100);
			}
			//draw_rectangle_color(x + 65 + 65 + 250, y + 25, x + 65 + 65 + 250 + enemies[0].enemy_max_hp*2, y + 25 + 18, c_red, c_red, c_red, c_red, false);
			draw_rectangle_color(x + 65 + 65 + 250, y + 25, x + 65 + 65 + 250 + enemies[0].enemy_max_hp * _hp_bar_coeff, y + 25 + 18, c_red, c_red, c_red, c_red, false);
			//draw_rectangle_color(x + 65 + 65 + 250, y + 25, x + 65 + 65 + 250 + enemies[0].enemy_current_hp*2, y + 25 + 18, c_lime, c_lime, c_lime, c_lime, false);
			draw_rectangle_color(x + 65 + 65 + 250, y + 25, x + 65 + 65 + 250 + enemies[0].enemy_current_hp * _hp_bar_coeff, y + 25 + 18, c_lime, c_lime, c_lime, c_lime, false);
		}
		if enemies[1] != noone { //если в битве 2 врага
			if enemies[1].can_be_spared == true 
				draw_text_color(x + 65, y + 20, "\n* " + string(enemies[1].enemy_name), c_yellow, c_yellow, c_yellow, c_yellow, 1);
			else
				draw_text(x + 65, y + 20, "\n* " + string(enemies[1].enemy_name));
			if enemies[2] != noone { //если в битве 3 врага
				var _target = enemies[2];
				var _hp_bar_coeff = 1;
				if _target.enemy_max_hp < 100 {
					_hp_bar_coeff = 2;
				}
				else if _target.enemy_max_hp > 100 {
					_hp_bar_coeff = 1 / (_target.enemy_max_hp / 100);
				}
				if enemies[2].can_be_spared == true 
					draw_text_color(x + 65, y + 20, "\n\n* " + string(enemies[2].enemy_name), c_yellow, c_yellow, c_yellow, c_yellow, 1);
				else
					draw_text(x + 65, y + 20, "\n\n* " + string(enemies[2].enemy_name));
				draw_rectangle_color(x + 65 + 65 + 250, y + 25 + 32 + 32, x + 65 + 65 + 250 + enemies[2].enemy_max_hp * _hp_bar_coeff, y + 25 + 18 + 32 + 32, c_red, c_red, c_red, c_red, false);
				draw_rectangle_color(x + 65 + 65 + 250, y + 25 + 32 + 32, x + 65 + 65 + 250 + enemies[2].enemy_current_hp * _hp_bar_coeff, y + 25 + 18 + 32 + 32, c_lime, c_lime, c_lime, c_lime, false);
			}
			var _target = enemies[1];
			var _hp_bar_coeff = 1;
			if _target.enemy_max_hp < 100 {
				_hp_bar_coeff = 2;
			}
			else if _target.enemy_max_hp > 100 {
				_hp_bar_coeff = 1 / (_target.enemy_max_hp / 100);
			}
			draw_rectangle_color(x + 65 + 65 + 250, y + 25 + 32, x + 65 + 65 + 250 + enemies[1].enemy_max_hp * _hp_bar_coeff, y + 25 + 18 + 32, c_red, c_red, c_red, c_red, false);
			draw_rectangle_color(x + 65 + 65 + 250, y + 25 + 32, x + 65 + 65 + 250 + enemies[1].enemy_current_hp * _hp_bar_coeff, y + 25 + 18 + 32, c_lime, c_lime, c_lime, c_lime, false);
		}
		break;
		
		case "actPressedMonsterChoosed":
			draw_set_font(fnt_battle_text);
			var _target = enemies[selected_enemy];
			draw_text(x + 65, y + 20, string(_target.act1)); //действие 1 (Check)
					draw_text(x + 65 + 265, y + 20, string(_target.act2)); //действие 2 
					draw_text(x + 65, y + 20, "\n" + string(_target.act3)); //действие 3
					draw_text(x + 65 + 265, y + 20, "\n" + string(_target.act4)); //действие 4
			break;
		
		case "acting":
			draw_set_font(fnt_battle_text);
			//draw_text(x + 25, y + 20, text_to_draw);
			symbols = 1;
			width = 0
			row = 0;

			while (symbols <= string_length(current_text)) {
				//var symbol = string_char_at(text, symbols);
				while (string_char_at(text_to_draw, symbols) == "`") {
					symbols++;
					switch(string_char_at(text_to_draw, symbols)) {
						case "n":
							row++;
							width = 0;
							break;
						case "y":
							draw_set_color(c_yellow);
							break;
						case "g":
							draw_set_color(c_green);
							break;
						case "w":
							draw_set_color(c_white);
							break;
					}
					symbols++;
				}
				draw_text(x + 25 + width, y + 20 + row * text_height, string_char_at(text_to_draw, symbols));
				width += string_width(string_char_at(text_to_draw, symbols));
				symbols++;
			}
			break;
		
		case "itemPressed":
			draw_set_font(fnt_battle_text);
			if ((item_page == 1) and (global.items[0].item_battle_name != "")) {
				if (global.items[0].item_battle_name != "") {
					if global.items[0].item_battle_name == "Джем" or global.items[0].item_battle_name == "Jam" {
						draw_text_color(x + 65, y + 20, "* " + string(global.items[0].item_battle_name), c_aqua, c_aqua, c_aqua, c_aqua, 1);
					}
					else {
						draw_text(x + 65, y + 20, "* " + string(global.items[0].item_battle_name));
					}
				}
				if (global.items[2].item_battle_name != "") {
					if global.items[2].item_battle_name == "Джем" or global.items[2].item_battle_name == "Jam" {
						draw_text_color(x + 65, y + 20, "\n* " + string(global.items[2].item_battle_name), c_aqua, c_aqua, c_aqua, c_aqua, 1);
					}
					else {
						draw_text(x + 65, y + 20, "\n* " + string(global.items[2].item_battle_name));
					}
				}
				if (global.items[4].item_battle_name != "")
					draw_text(x + 65, y + 20, "\n\n* " + string(global.items[4].item_battle_name));
				if (global.items[1].item_battle_name != "") {
					if global.items[1].item_battle_name == "Джем" or global.items[1].item_battle_name == "Jam" {
						draw_text_color(x + 65 + 265, y + 20, "* " + string(global.items[1].item_battle_name), c_aqua, c_aqua, c_aqua, c_aqua, 1);
					}
					else {
						draw_text(x + 65 + 265, y + 20, "* " + string(global.items[1].item_battle_name));
					}
				}
				if (global.items[3].item_battle_name != "")
					draw_text(x + 65 + 265, y + 20, "\n* " + string(global.items[3].item_battle_name));
				if (global.items[5].item_battle_name != "")
					draw_text(x + 65 + 265, y + 20, "\n\n* " + string(global.items[5].item_battle_name));
			}
			else if item_page == 2 {
				if (global.items[6].item_battle_name != "")
					draw_text(x + 65, y + 20, "* " + string(global.items[6].item_battle_name));
				if (global.items[7].item_battle_name != "")
					draw_text(x + 65 + 265, y + 20, "* " + string(global.items[7].item_battle_name));
			}
			break;
		
		case "usingItem":
			draw_set_font(fnt_battle_text);
			//draw_text(x + 25, y + 20, text_to_draw);
			symbols = 1;
			width = 0
			row = 0;

			while (symbols <= string_length(current_text)) {
				//var symbol = string_char_at(text, symbols);
				while (string_char_at(text_to_draw, symbols) == "`") {
					symbols++;
					switch(string_char_at(text_to_draw, symbols)) {
						case "n":
							row++;
							width = 0;
							break;
						case "y":
							draw_set_color(c_yellow);
							break;
						case "g":
							draw_set_color(c_green);
							break;
						case "w":
							draw_set_color(c_white);
							break;
					}
					symbols++;
				}
				draw_text(x + 25 + width, y + 20 + row * text_height, string_char_at(text_to_draw, symbols));
				if (instance_exists(obj_jam) and characters > 61 and current_text == obj_jam.battle_use_text) {				
					if global.language == "rus" {
						draw_line_color(447, 320, 450, 315, c_white, c_white);
					}
					else {
						draw_line_color(447 - string_width("mik"), 320 + text_height, 450 - string_width("mik"), 315 + text_height, c_white, c_white);
					}
				}
				width += string_width(string_char_at(text_to_draw, symbols));
				symbols++;
			}
			break;
		case "sparing":
			draw_set_font(fnt_battle_text);
			//draw_text(x + 25, y + 20, text_to_draw);
			symbols = 1;
			width = 0
			row = 0;

			while (symbols <= string_length(current_text)) {
				//var symbol = string_char_at(text, symbols);
				while (string_char_at(text_to_draw, symbols) == "`") {
					symbols++;
					switch(string_char_at(text_to_draw, symbols)) {
						case "n":
							row++;
							width = 0;
							break;
						case "y":
							draw_set_color(c_yellow);
							break;
						case "g":
							draw_set_color(c_green);
							break;
						case "w":
							draw_set_color(c_white);
							break;
					}
					symbols++;
				}
				draw_text(x + 25 + width, y + 20 + row * text_height, string_char_at(text_to_draw, symbols));
				if (instance_exists(obj_jam) and characters > 61 and current_text == obj_jam.battle_use_text) {				
					draw_line_color(447, 320, 450, 315, c_white, c_white);				
				}
				width += string_width(string_char_at(text_to_draw, symbols));
				symbols++;
			}
			break;
		
		case "mercyPressed":
			draw_set_font(fnt_battle_text);
			if global.language == "rus" {
				if can_spare = true {
					draw_text_color(x + 65, y + 20, "* Пощада", c_yellow, c_yellow, c_yellow, c_yellow, 1);
				}
				else {
					draw_text(x + 65, y + 20, "* Пощада");
				}
				if can_flee = true {
					draw_text(x + 65, y + 20, "\n* Сбежать");
				}
			}
			else {
				if can_spare = true {
					draw_text_color(x + 65, y + 20, "* Spare", c_yellow, c_yellow, c_yellow, c_yellow, 1);
				}
				else {
					draw_text(x + 65, y + 20, "* Spare");
				}
				if can_flee = true {
					draw_text(x + 65, y + 20, "\n* Flee");
				}
			}
			break;
		
		case "flee":
			draw_set_font(fnt_battle_text);
			//draw_text(x + 25, y + 20, text_to_draw);
			symbols = 1;
			width = 0
			row = 0;

			while (symbols <= string_length(current_text)) {
				//var symbol = string_char_at(text, symbols);
				while (string_char_at(text_to_draw, symbols) == "`") {
					symbols++;
					switch(string_char_at(text_to_draw, symbols)) {
						case "n":
							row++;
							width = 0;
							break;
						case "y":
							draw_set_color(c_yellow);
							break;
						case "g":
							draw_set_color(c_green);
							break;
						case "w":
							draw_set_color(c_white);
							break;
					}
					symbols++;
				}
				draw_text(x + 25 + width, y + 20 + row * text_height, string_char_at(text_to_draw, symbols));
				if (instance_exists(obj_jam) and characters > 61 and current_text == obj_jam.battle_use_text) {				
					draw_line_color(447, 320, 450, 315, c_white, c_white);				
				}
				width += string_width(string_char_at(text_to_draw, symbols));
				symbols++;
			}
			break;
		
		case "victory":
			draw_set_font(fnt_battle_text);
			//draw_text(x + 25, y + 20, text_to_draw);
			symbols = 1;
			width = 0
			row = 0;

			while (symbols <= string_length(current_text)) {
				//var symbol = string_char_at(text, symbols);
				while (string_char_at(text_to_draw, symbols) == "`") {
					symbols++;
					switch(string_char_at(text_to_draw, symbols)) {
						case "n":
							row++;
							width = 0;
							break;
						case "y":
							draw_set_color(c_yellow);
							break;
						case "g":
							draw_set_color(c_green);
							break;
						case "w":
							draw_set_color(c_white);
							break;
					}
					symbols++;
				}
				draw_text(x + 25 + width, y + 20 + row * text_height, string_char_at(text_to_draw, symbols));
				width += string_width(string_char_at(text_to_draw, symbols));
				symbols++;
			}
			break;
}