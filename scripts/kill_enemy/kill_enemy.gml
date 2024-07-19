// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function kill_enemy(){
	global.killed++;
	for (var _i = 2; _i >= 0; _i--) {
		if (enemies[_i] != noone) {
			if (enemies[_i].enemy_current_hp == 0) {
				if enemies[_i] == obj_lemike and obj_lemike.dead == false {
					enemies[_i].alarm[8] = 1;
					return true;
				}
				else {
					audio_play_sound(snd_goodbye, 10, 0);
					enemies[_i].alarm[9] = 1;
					earned_exp += enemies[_i].enemy_exp;
					switch (_i) { //сдвиг врагов
						case 0:
							enemies[0] = enemies[1];
							if (enemies[1] != noone) {
								enemies[1] = enemies[2]; ////либо становится noone, либо третьим врагом
								if (enemies[2] != noone) {
									enemies[2] = noone; //если третий враг был, на его месте пустота
								}
							}
							break;
						case 1: //пощада второго врага
							enemies[1] = enemies[2]; //либо становится noone, либо третьим врагом
							if (enemies[2] != noone) {
								enemies[2] = noone; //если третий враг был, на его месте пустота
							}
							break;
						case 2: //пощада третьего врага
							enemies[2] = noone;
							break;
					}
				}
			} 
		}
	}
	if (global.player_lv == 1) and obj_patience.battle_type != 24 {
		earned_exp = global.player_exp_to_lv;
	}
	if (enemies[0] = noone) { //победа
		battle_state = "victory";
		characters = 0;
		text_to_draw = "";
		obj_soul_battle.visible = false;
		if instance_exists(obj_battle_dialogue) {
			instance_destroy(obj_battle_dialogue);
		}
		audio_stop_sound(global.battle_music);
		if (earned_exp >= (global.player_exp_to_lv - global.player_exp)) {
			if global.language == "rus" {
				current_text = "* Вы ПОБЕДИЛИ!`n* Вы получили " + string(earned_exp) + " ОП и " + string(earned_gold) + " М." +
				"`n* Ваш УР повысился.";
			}
			else {
				current_text = "* You WON!`n* You've earned " + string(earned_exp) + " EXP and " + string(earned_gold) + " G." +
				"`n* Your LOVE increased.";
			}
			audio_play_sound(snd_levelup, 10, 0);
		}
		else {
			if global.language == "rus" {
				current_text = "* Вы ПОБЕДИЛИ!`n* Вы получили " + string(earned_exp) + " ОП и " + string(earned_gold) + " М.";
			}
			else {
				current_text = "* You WON!`n* You've earned " + string(earned_exp) + " EXP and " + string(earned_gold) + " G.";
			}
		}
		global.player_gold += earned_gold;
		global.player_exp += earned_exp;
		while (global.player_exp >= global.player_exp_to_lv) {
			lv_up();
		}
		return true;
	}
	return false;
}