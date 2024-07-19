// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function choose_attack(_battle_id) {
	var _script_name;
	switch(_battle_id) {
		case 0:
			new_border_left = 32 + 225 - 25;
			new_border_width = border_height + 50;
			_script_name = empty_attack;
			break;
		case 1:
			new_border_left = 32 + 225;
			new_border_width = border_height;
			_script_name = froggit_attack1;
			break;
		case 2:
			new_border_left = 32 + 225;
			new_border_width = border_height;
			_script_name = froggit_attack1;
			break;
		case 3:
			new_border_left = 32 + 225;
			new_border_width = border_height;
			_script_name = froggit_attack1;
			break;
		case 4:
			new_border_left = 32 + 225;
			new_border_width = border_height + 50;
			_script_name = froggit_attack2;
			if enemies[1] == noone {
				new_border_left = 32 + 225;
				new_border_width = border_height;
				_script_name = froggit_attack1;
			}
			break;
		case 5:
			new_border_left = 32 + 225;
			new_border_width = border_height + 50;
			_script_name = froggit_attack2;
			if enemies[1] == noone {
				new_border_left = 32 + 225;
				new_border_width = border_height;
				_script_name = froggit_attack1;
			}
			break;
		case 6:
			new_border_left = 32 + 225;
			new_border_width = border_height + 50;
			_script_name = froggit_attack2;
			if enemies[1] == noone {
				new_border_left = 32 + 225;
				new_border_width = border_height;
				_script_name = froggit_attack1;
			}
			break;
		case 7:
			new_border_left = 32 + 225;
			new_border_width = border_height + 50;
			_script_name = froggit_attack3;
			if enemies[2] == noone {
				_script_name = froggit_attack2;
			}
			if enemies[1] == noone {
				new_border_left = 32 + 225;
				new_border_width = border_height;
				_script_name = froggit_attack1;
			}
			break;
		case 24:
			new_border_left = 32 + 225;
			new_border_width = border_height;
			if obj_lemike.jamed == false {	
				if obj_battle_manager.turn == 1 { //первый ход - одно перекати поле
					_script_name = lemike_attack1;
				}
				else if obj_battle_manager.turn == 2{ //второй ход - три перекати поле
					_script_name = lemike_attack2;
				}
				else if obj_battle_manager.turn == 3 or obj_battle_manager.turn == 4 { //3 и 4 ходы, мелкие перекати поле
					_script_name = lemike_attack3;
				}
				else if obj_battle_manager.turn == 5 { //5 ход - спавн 1 фроггита
					_script_name = lemike_attack_spawn_one_froggit;
					obj_battle_manager.previous_attack = _script_name;
					obj_battle_manager.attack_time = 150;
				}
				else { //дальнейшие ходы до джема 
					if obj_battle_manager.enemies[2] != noone {
						_script_name = froggit_attack3; //если уже есть 2 фроггита, то двойная их атака
					}
					else if obj_battle_manager.enemies[1] != noone {
						_script_name = choose(froggit_attack1, froggit_attack2); //если есть только 1 фроггит, то одна из его атак
					}
					else {
						if obj_battle_manager.previous_attack == lemike_attack_spawn_one_froggit { //если фроггитов нет, до этого спавнили одного, теперь спавним двух
							_script_name = lemike_attack_spawn_two_froggits; 
							obj_battle_manager.attack_time = 180;
						}
						else if obj_battle_manager.previous_attack ==  lemike_attack_spawn_two_froggits { //если фроггитов нет, до этого спавнили двух, теперь перекати поле
							_script_name = lemike_attack3; 
						}
						else if obj_battle_manager.previous_attack == lemike_attack3 { //если фроггитов нет, до этого было перекати поле, снова спавним одного фроггита
							_script_name = lemike_attack_spawn_one_froggit;
							obj_battle_manager.attack_time = 150;
						}
						else {
							_script_name = lemike_attack3; //по умолчанию ставим перекати поле на всякий случай
						}
						obj_battle_manager.previous_attack = _script_name; //записываем предыдущую из этих трёх атак
					}
				}
			}
			else { //атаки после джема
				if obj_battle_manager.previous_attack == lemike_revolver1 {
					_script_name = lemike_circle_attack1;
				}
				else if obj_battle_manager.previous_attack == lemike_circle_attack1 {
					_script_name = lemike_attack4;
				}
				else if obj_battle_manager.previous_attack == lemike_attack4 {
					_script_name = lemike_revolver2;
				}
				else if obj_battle_manager.previous_attack == lemike_revolver2 {
					_script_name = lemike_circle_attack2;
				}
				else if obj_battle_manager.previous_attack == lemike_circle_attack2 {
					_script_name = lemike_attack5;
				}
				else if obj_battle_manager.previous_attack == lemike_attack5 {
					_script_name = lemike_revolver3;
				}
				else if obj_battle_manager.previous_attack == lemike_revolver3 {
					_script_name = lemike_circle_attack3;
				}
				else if obj_battle_manager.previous_attack == lemike_circle_attack3 {
					_script_name = lemike_attack6;
				}
				else if obj_battle_manager.previous_attack == lemike_attack6 {
					_script_name = lemike_revolver3;
				}
				else { 
					_script_name = lemike_revolver1;
				}
				obj_battle_manager.previous_attack = _script_name;
			}
			if obj_lemike.can_be_spared == true {
				obj_battle_manager.attack_time = 30;
				_script_name = empty_attack;
			}
			break;
		default:
			new_border_left = 32 + 225;
			new_border_width = border_height;
			_script_name = empty_attack;
			break;
	}

	return _script_name;

}