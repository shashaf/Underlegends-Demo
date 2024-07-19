// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spare_enemies(){
	var _someone_was_spared = false;
	for (var _i = 2; _i >= 0; _i--) {
		if (enemies[_i] != noone) {
			if (enemies[_i].can_be_spared == true) {
				_someone_was_spared = true;
				audio_play_sound(snd_goodbye, 10, 0);
				enemies[_i].alarm[0] = 1;
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
	
	if (enemies[0] = noone) { //победа
		battle_state = "victory";
		characters = 0;
		text_to_draw = "";
		obj_soul_battle.visible = false;
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
			lv_up();
		}
		else {
			if global.language == "rus" {
				current_text = "* Вы ПОБЕДИЛИ!`n* Вы получили " + string(earned_exp) + " ОП и " + string(earned_gold) + " М."
			}
			else {
				current_text = "* You WON!`n* You've earned " + string(earned_exp) + " EXP and " + string(earned_gold) + " G.";
			}
		}
		global.player_gold += earned_gold;
		global.player_exp += earned_exp;
	}
	else {
		battle_state = "sparing"; //должно быть не patience
		obj_soul_battle.x = soul_start_x + 158*3;
		obj_soul_battle.y = soul_start_y;
		if (_someone_was_spared == false) {
			characters = 0;
			text_to_draw = "";
			
			if global.language == "rus" {
				current_text = "* Сейчас некого `yпощадить`w.";
			}
			else {
				current_text = "* No enemies to `yspare `wyet.";
			}
			//alarm[2] = 120;
		}
		else {
			if enemies[0] = obj_lemike and enemies[0].jamed == true {
				obj_soul_battle.x = soul_start_x + 158*2;
			}
			else {
				//alarm[2] = 30;
				characters = 0;
				text_to_draw = "";
				if global.language == "rus" {
					current_text = "* Вы `yпощадили `wпротивника.";
				}
				else {
					current_text = "* The enemy was `yspared`w.";
				}
			}
		}
	}
}