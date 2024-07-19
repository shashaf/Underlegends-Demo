// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function choose_battle(_room_id){
	var _castle = 10;
	var _first_boss_room = 19;
	var _tutorial = 8;
	var _lemike = 27;
	randomise();
	
	
	if _room_id < _castle {
		if global.player_lv >= 4 {
			battle_id = -1;
			global.battle_music = snd_silence;
			return battle_id;
		}
		if _room_id == _first_boss_room {
			global.battle_music = mus_first_boss;
			battle_id = 8;
		}
		else if _room_id == _tutorial {
			global.battle_music = mus_tutorial_fight;
			battle_id = 0;
		}
		else { 
			if (global.fun >= 40 and global.fun <= 49) {
				global.battle_music = mus_first_miniboss;
			}
			else {
				global.battle_music = mus_battle;
			}
			if global.player_lv == 3 {
				audio_sound_pitch(global.battle_music, 0.85);
			}
			battle_id = choose(1, 2, 3, 4, 5, 6); //враги №1, 2, 3, 1 + 2, 2 + 3, 1 + 3, 1 + 2 + 3 соответственно
		}
	}
	else {
		if _room_id == _lemike or room == rm_reject2 {
			global.battle_music = mus_sheriff_battle;
			battle_id = 24;
		}
	}
	return battle_id;
}