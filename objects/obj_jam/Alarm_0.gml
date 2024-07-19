/// @description Использование в бою
// You can write your code in this editor
var _item_number = obj_battle_manager.selected_item;
if item_type == 0 {
	obj_button_item.shining = false;
	obj_battle_manager.current_text = battle_use_text;
	obj_battle_manager.turn = 15;
	audio_play_sound(snd_heal, 10, 0);
	audio_sound_gain(global.battle_music, 0, 2000);
	if obj_battle_manager.enemies[2] != noone {
		//obj_battleManager.enemies[2].alarm[0] = 1;
		//obj_battleManager.enemies[1].alarm[0] = 1;
		obj_battle_manager.enemies[2].can_be_spared = true;
		obj_battle_manager.enemies[1].can_be_spared = true;
	}
	else if obj_battle_manager.enemies[1] != noone {
		//obj_battleManager.enemies[1].alarm[0] = 1;
		obj_battle_manager.enemies[1].can_be_spared = true;
	}
	global.player_hp += item_heals;
	if global.player_hp > global.player_max_hp
		global.player_hp = global.player_max_hp;
	obj_battle_manager.hp_bar_width_yellow = global.player_hp;
	if _item_number == 7 { //если мы использовали 8 предмет
		global.item_IDs[_item_number] = 0;
		global.items[_item_number] = obj_empty_item; //то 8 предмет заменяем на пустой
	}
	else { //если мы использовали предмет под номером от 1 до 7
		for (var _i = _item_number + 1; _i <= 7; _i++) { //проходим цикл от выбранного предмета до конца инвентаря
			global.items[_i-1] = global.items[_i]; //сдвигаем предметы на 1
			global.item_IDs[_i-1] = global.item_IDs[_i];
			if _i == 7 { //последний предмет делаем пустым
				global.items[_i] = obj_empty_item;
				global.item_IDs[_i] = 0;
			}
		}
	}
	//obj_battleManager.alarm[4] = 1;
	var _enemies = obj_battle_manager.enemies;
	for (var _i = 2; _i >= 0; _i--) { //пощада фроггитов
		if (_enemies[_i] != noone) {
			if (_enemies[_i].can_be_spared == true) {
				audio_play_sound(snd_goodbye, 10, 0);
				_enemies[_i].alarm[0] = 1;
				switch (_i) { //сдвиг врагов
					case 0:
						_enemies[0] = _enemies[1];
						if (_enemies[1] != noone) {
							_enemies[1] = _enemies[2]; ////либо становится noone, либо третьим врагом
							if (_enemies[2] != noone) {
								_enemies[2] = noone; //если третий враг был, на его месте пустота
							}
						}
						break;
					case 1: //пощада второго врага
						_enemies[1] = _enemies[2]; //либо становится noone, либо третьим врагом
						if (_enemies[2] != noone) {
							_enemies[2] = noone; //если третий враг был, на его месте пустота
						}
						break;
					case 2: //пощада третьего врага
						_enemies[2] = noone;
						break;
				}
			} 
		}
	}
	with (obj_lemike) {
		jamed = true;
		enemy_at = 10;
		enemy_real_df = 2;
		dialogue_end = 46;
		dialogue_current = 13;
		enemy_name = "Lemike";
		act2 = "* Attacks";
		act3 = "* Design";
		act4 = "";
		
		check_text = "* " + enemy_name + ". ATK - 10" + " DEF - 2" + ".`n* Her eye shines with joy.";
		//act2_text = "* You praised Lemike's own attacks.`n* She smirked.`n* Her ATTACK increased.";
		act2_text = "* You praised Lemike's`n  own attacks. She smirked.`n* Her ATTACK increased.";
		//act3_text = "* You say that 3 people worked`n  on Lemike's design. `n* Her ATTACK and DEFENSE are reduced.";
		act3_text = "* You say that 3 people worked`n  on Lemike's design. `n* Her ATTACK and DEFENSE drop.";
		if global.language = "rus" {
			enemy_name = "Лемике";
			act2 = "* Атаки";
			act3 = "* Дизайн";
			act4 = "";
		
			check_text = "* " + enemy_name + ". ATK - 10" + " ЗАЩ - 2" + ".`n* Её глаз радостно сияет.";
			act2_text = "* Вы похвалили собственные`n  атаки Лемике. Она ухмыльнулась.`n* Её АТАКА повышена.";
			act3_text = "* Вы говорите, что над дизайном`n  Лемике работало 3 человека.`n* Её АТАКА и ЗАЩИТА снижены.";
		}
		alarm[4] = 120;
	}
}


