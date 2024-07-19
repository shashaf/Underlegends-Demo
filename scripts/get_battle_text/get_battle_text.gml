// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_battle_text(_battle_id, _turn){
	var _text = "";
	if global.language == "rus" {
		switch(_battle_id) {
			case -1:
				_text = "* достаточно.";
				break;
			case 0:
				_text = "* Стражник хочет провести`n  тренировку.";
				break;
			case 1:
				if _turn > 1 {
					_text = "* Белый фроггит здесь чтобы`n  научить вас сражаться.";
				}
				break;
			case 2:
				if _turn > 1 {
					_text = "* " + enemies[0].enemy_name + " здесь чтобы`n  научить вас `yпощаде`w.";
				}
				break;
			case 3:
				if _turn > 1 {
					_text = "* " + enemies[0].enemy_name + " здесь чтобы`n  научить вас `rсбегать`w.";
				}
				break;
			case 4:
				if _turn > 1 {
					_text = "* Фроггиты здесь чтобы`n  научить вас сражаться.";
				}
				if enemies[1] == noone {
					_text = "* " + enemies[0].enemy_name + " здесь чтобы`n  научить вас сражаться."
				}
				break;
			case 5:
				if _turn > 1 {
					_text = "* Фроггиты здесь чтобы`n  научить вас сражаться.";
				}
				if enemies[1] == noone {
					_text = "* " + enemies[0].enemy_name + " здесь чтобы`n  научить вас сражаться."
				}
				break;
			case 6:
				if _turn > 1 {
					_text = "* Фроггиты здесь чтобы`n  научить вас сражаться.";
				}
				if enemies[1] == noone {
					_text = "* " + enemies[0].enemy_name + " здесь чтобы`n  научить вас сражаться."
				}
				break;
			case 7:
				if _turn > 1 {
					_text = "* Фроггиты здесь чтобы`n  научить вас сражаться...`n* Каждый из них... довольно громко.";
				}
				if enemies[2] == noone {
					_text = "* Фроггиты здесь чтобы`n  научить вас сражаться.";
				}
				if enemies[1] == noone {
					_text = "* " + enemies[0].enemy_name + " здесь чтобы`n  научить вас сражаться."
				}
				break;
			case 24:
					if (enemies[1] == noone) {
						if _turn < 8 {
							_text = "* Шериф в городе.";
						}
						else {
							_text = "* Похоже, остаётся только`n  проявить терпение.";
						}
					}
					else if (enemies[2] != noone) {
						_text = "* Шериф в городе.`n* Фроггиты тоже тут.";
					}
					else {
						_text = "* Шериф в городе.`n* Фроггит тоже тут.";
					}
					if _turn > 14 {
						_text = "* Кажется, в ваших ВЕЩАХ`n  появилось что-то новое."
					}
					if obj_lemike.jamed == true {
						if _turn == 16 {
							_text = "* Лемике готова к фазе 2!";
						}
						else if _turn < 22 {
							_text = "* Лемике радостно готовит`n  следующую атаку.";
						}
						else if obj_lemike.enemy_current_hp >= (obj_lemike.enemy_max_hp - 20) {
							_text = "* Похоже, остаётся только`n  проявить терпение.";
						}
						else {
							_text = "* Похоже, остаётся только`n  проявить `rтерпение.";
						}
					
						if obj_lemike.enemy_current_hp <= 20 {
							_text = "* У Лемике мало ОЗ.";
						}
						if obj_lemike.can_be_spared == true {
							_text = "* Лемике не хочет продолжать`n  битву.";
						}
					}
				//}
				break;
			default:
				if _turn > 1 {
					_text = "* Фроггиты здесь чтобы`n  научить вас сражаться.";
				}
				break;
		}
	}
	else {
		switch(_battle_id) {
			case -1:
				_text = "* enough.";
				break;
			case 0:
				_text = "* The Guard wants to practice`n  fighting.";
				break;
			case 1:
				if _turn > 1 {
					_text = "* White froggit is here to`n  teach you about battle.";
				}
				break;
			case 2:
				if _turn > 1 {
					_text = "* " + enemies[0].enemy_name + " is here to teach`n  you the use of `yMercy`w.";
				}
				break;
			case 3:
				if _turn > 1 {
					_text = "* " + enemies[0].enemy_name + " is here to teach`n  you how to `rescape`w.";
				}
				break;
			case 4:
				if _turn > 1 {
					_text = "* Froggits are here to teach you`n  about battle.";
				}
				if enemies[1] == noone {
					_text = "* " + enemies[0].enemy_name + " is here to teach`n  you about battle."
				}
				break;
			case 5:
				if _turn > 1 {
					_text = "* Froggits are here to teach you`n  about battle.";
				}
				if enemies[1] == noone {
					_text = "* " + enemies[0].enemy_name + " is here to teach`n  you about battle."
				}
				break;
			case 6:
				if _turn > 1 {
					_text = "* Froggits are here to teach you`n  about battle.";
				}
				if enemies[1] == noone {
					_text = "* " + enemies[0].enemy_name + " is here to teach`n  you about battle."
				}
				break;
			case 7:
				if _turn > 1 {
					_text = "* Froggits are here to teach you`n  about battle...`n* Each of them... quite loud..";
				}
				if enemies[2] == noone {
					_text = "* Froggits are here to teach you`n  about battle.";
				}
				if enemies[1] == noone {
					_text = "* " + enemies[0].enemy_name + " is here to teach`n  you about battle."
				}
				break;
			case 24:
					if (enemies[1] == noone) {
						if _turn < 8 {
							_text = "* Sheriff in town.";
						}
						else {
							_text = "* It seems the only option`n  is to be patient.";
						}
					}
					else if (enemies[2] != noone) {
						_text = "* Sheriff in town.`n* Froggits are here too."
					}
					else {
						_text = "* Sheriff in town.`n* Froggit is here too."
					}
					if _turn > 14 {
						_text = "* It seems that something new`n  has appeared in your `yITEMS.";
					}
					if obj_lemike.jamed == true {
						if _turn == 16 {
							_text = "* Lemike is ready for phase 2!";
						}
						else if _turn < 22 {
							_text = "* Lemike happily prepares`n  her next attack.";
						}
						else if obj_lemike.enemy_current_hp >= (obj_lemike.enemy_max_hp - 20) {
							_text = "* It seems the only option`n  is to be patient.";
						}
						else {
							_text = "* It seems the only option`n  is to be `rpatient.";
						}
					
						if obj_lemike.enemy_current_hp <= 20 {
							_text = "* Lemike has low HP.";
						}
						if obj_lemike.can_be_spared == true {
							_text = "* Lemike does not want`n  to continue the battle.";
						}
					}
				//}
				break;
			default:
				if _turn > 1 {
					_text = "* Froggit is here to teach you`n  about battle.";
				}
				break;
		}
	}
	return _text;
}