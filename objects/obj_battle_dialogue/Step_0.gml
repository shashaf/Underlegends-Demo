/// @description Insert description here
// You can write your code in this editor
randomize();
if characters < string_length(start_text) { //если фраза не вся на экране
	speaker.sprite_index = speaker.talking_sprite;
	characters += increase;
	text = string_copy(start_text, 0, characters);
	var _character = string_char_at(start_text, characters);	
	if (_character != " ") and letter >= need_to_pronounce {
		audio_play_sound(voice, 0, 0);
		letter = 0;
	}
			
	/*if _character == "," or (speaker.dialogue_current >= 80 and speaker.dialogue_current < 90) {
		if speaker.dialogue_current >= 80 and speaker.dialogue_current < 83 {
			need_to_pronounce = choose(1, 2, 3);
		}
		increase = 0.2;
	}
	else if (speaker.dialogue_current >= 70 and speaker.dialogue_current < 80) {
		increase = 0.5;
		need_to_pronounce = choose(1, 2);
	}*/
	if _character == "," {
		increase = 0.2;
	}
	else {
		increase = 1;
		need_to_pronounce = 1;
	}
	letter += increase;
	
	
	if enter_z_check() or shift_x_check() or ctrl_c_check() {
		characters = text_length;
		symbols = text_length;
		text = string_copy(start_text, 0, characters);
	}
}
else if (showed == false) {
	speaker.sprite_index = speaker.calm_sprite;
	
	if speaker == obj_lemike {
		if obj_lemike.jamed == false or speaker.dialogue_current > speaker.dialogue_cutscene_end {
			if speaker.dialogue_current < 58 {
				obj_battle_manager.alarm[3] = 60;
				showed = true;
			}
			else {
				if speaker.dialogue_current == 58 {
					speaker.dialogue_cutscene_end = 69;
					speaker.dialogue_end = 69;
					speaker.dialogue_current++;
					obj_battle_manager.attack_type = lemike_attack1;
					obj_battle_manager.alarm[3] = 60;
					showed = true;
				}
				else if speaker.dialogue_current != 100 {
					//audio_sound_gain(global.battle_music, 0, 5000);
					//speaker.can_be_spared = true;
					//speaker.dialogue_cutscene_end = 69;
					//speaker.dialogue_end = 69;
					speaker.dialogue_current++;
					start_text = obj_lemike.dialogue_text[obj_lemike.dialogue_current];
					text_length = string_length(start_text);
					speaker.dialogue_previous = speaker.dialogue_current;
					characters = 0;
					symbols = 0;
					text = "";
				}
				else {
					obj_battle_manager.alarm[3] = 60;
					showed = true;
				}
			}
		}
		else {
			if speaker.dialogue_current == 21 and !audio_is_playing(mus_sheriff_revelation){
				audio_play_sound(mus_sheriff_revelation, 1, 1);
			}
			else if speaker.dialogue_current == 40 {
				audio_sound_gain(mus_sheriff_revelation, 0, 3000);
			}
			else if speaker.dialogue_current == 41 {
				audio_stop_sound(global.battle_music);
				audio_sound_gain(global.battle_music, 1, 1);
			}
			else if speaker.dialogue_current == 43 {
				audio_stop_sound(mus_sheriff_revelation);
				audio_sound_gain(mus_sheriff_revelation, 1, 1);
				
				if !audio_is_playing(global.battle_music)
					audio_play_sound(global.battle_music, 2, 1);
			}
			else if speaker.dialogue_current == 60 {
				speaker.can_be_spared = true;
				audio_sound_gain(global.battle_music, 0, 5000);
				
			}
			if enter_z_check() or shift_x_check() or ctrl_c_check() {
				if speaker.dialogue_current < speaker.dialogue_end {
					speaker.dialogue_current++;
					start_text = obj_lemike.dialogue_text[obj_lemike.dialogue_current];
					text_length = string_length(start_text);
					speaker.dialogue_previous = speaker.dialogue_current;
					characters = 0;
					symbols = 0;
					text = "";
				}
				else {	
					if speaker.dialogue_current < 81 { 
						obj_battle_manager.alarm[1] = 1;
						if speaker.can_be_spared == false {
							speaker.dialogue_end = 58;
						}
						else {
							audio_stop_sound(global.battle_music);
							audio_sound_gain(global.battle_music, 1, 100);
							speaker.dialogue_end = 100;
							speaker.dialogue_current = 100;
						}
					}
					else {
						obj_lemike.dead = true;
						with (obj_battle_manager) {
							kill_enemy();
						}
					}
				}
			}
		}
	}	
	else if (speaker != obj_froggit_yellow or obj_patience.battle_type != 24) and obj_patience.battle_type != 0 { //обычный бой
		obj_battle_manager.alarm[3] = 60;
		showed = true;
	}
	else if obj_patience.battle_type == 0 { //туториальные диалоги
		if enter_z_check() {
			if speaker.dialogue_current < speaker.dialogue_end {
				speaker.dialogue_current++;
				start_text = speaker.dialogue_text[speaker.dialogue_current];
				text_length = string_length(start_text);
				speaker.dialogue_previous = speaker.dialogue_current;
				characters = 0;
				symbols = 0;
				text = "";
				
				if (speaker.dialogue_current == 1) {
					if !audio_is_playing(global.battle_music) {
						audio_play_sound(global.battle_music, 10, 1);
					}
				}
				else if (speaker.dialogue_current == 2) {
					obj_button_act.moving = true;
				}
				else if (speaker.dialogue_current == 33) {
					obj_button_fight.moving = true;
					obj_button_fight.shining = true;
					obj_battle_manager.tutorial_state = "Fight";
				}
				else if (speaker.dialogue_current == 45) {
					obj_button_item.moving = true;
					obj_button_item.shining = true;
					obj_battle_manager.tutorial_state = "Item";
					
				}
				else if speaker.dialogue_current == 49 {
					obj_button_item.moving = true;
					//obj_battle_manager.tutorial_state = "Item";
				}
				else if (speaker.dialogue_current == 62) {
					obj_button_fight.shining = true;
					obj_battle_manager.can_use_skill = true;
					obj_battle_manager.tutorial_state = "Skill";
				}
				else if (speaker.dialogue_current == 80) {
					obj_button_mercy.shining = true;
					obj_button_mercy.moving = true;
					obj_battle_manager.tutorial_state = "Mercy";
				}
			}
			else {
				switch(speaker.dialogue_end) {
					case 2:
						speaker.dialogue_end = 13;
						speaker.dialogue_current = 3;
						obj_battle_manager.alarm[1] = 10;
						showed = true;
						break;
					case 13:
						speaker.dialogue_end = 13;
						speaker.dialogue_current = 3;
						obj_battle_manager.alarm[1] = 10;
						showed = true;
						break;
					case 18:
						speaker.dialogue_current = 32;
						speaker.dialogue_end = 34;
						start_text = speaker.dialogue_text[speaker.dialogue_current];
						text_length = string_length(start_text);
						speaker.dialogue_previous = speaker.dialogue_current;
						characters = 0;
						symbols = 0;
						text = "";
						break;
					case 31:
						speaker.dialogue_current = 32;
						speaker.dialogue_end = 34;
						start_text = speaker.dialogue_text[speaker.dialogue_current];
						text_length = string_length(start_text);
						speaker.dialogue_previous = speaker.dialogue_current;
						characters = 0;
						symbols = 0;
						text = "";
						break;
					case 34:
						speaker.dialogue_current = 41;
						speaker.dialogue_end = 41;
						showed = true;
						obj_battle_manager.alarm[1] = 10;
						break;
					case 39: //повторное использование действия когда уже не надо
						switch (obj_battle_manager.tutorial_state) {
							case "Fight":
								speaker.dialogue_current = 34;
								speaker.dialogue_end = 34;
								start_text = speaker.dialogue_text[speaker.dialogue_current];
								text_length = string_length(start_text);
								speaker.dialogue_previous = speaker.dialogue_current;
								characters = 0;
								symbols = 0;
								text = "";
								break;
							case "Skill":
								speaker.dialogue_current = 62;
								speaker.dialogue_end = 63;
								start_text = speaker.dialogue_text[speaker.dialogue_current];
								text_length = string_length(start_text);
								speaker.dialogue_previous = speaker.dialogue_current;
								characters = 0;
								symbols = 0;
								text = "";
								break;
							case "Item":
								speaker.dialogue_current = 64;
								speaker.dialogue_end = 68;
								start_text = speaker.dialogue_text[speaker.dialogue_current];
								text_length = string_length(start_text);
								speaker.dialogue_previous = speaker.dialogue_current;
								characters = 0;
								symbols = 0;
								text = "";
								break;
							case "Skill_no_hp":
								speaker.dialogue_current = 75;
								speaker.dialogue_end = 75;
								start_text = speaker.dialogue_text[speaker.dialogue_current];
								text_length = string_length(start_text);
								speaker.dialogue_previous = speaker.dialogue_current;
								characters = 0;
								symbols = 0;
								text = "";
								break;
						}
						break;
					case 40:
						switch (obj_battle_manager.tutorial_state) {
							case "Fight":
								speaker.dialogue_current = 34;
								speaker.dialogue_end = 34;
								start_text = speaker.dialogue_text[speaker.dialogue_current];
								text_length = string_length(start_text);
								speaker.dialogue_previous = speaker.dialogue_current;
								characters = 0;
								symbols = 0;
								text = "";
								break;
							case "Skill":
								speaker.dialogue_current = 62;
								speaker.dialogue_end = 63;
								start_text = speaker.dialogue_text[speaker.dialogue_current];
								text_length = string_length(start_text);
								speaker.dialogue_previous = speaker.dialogue_current;
								characters = 0;
								symbols = 0;
								text = "";
								break;
							case "Item":
								speaker.dialogue_current = 64;
								speaker.dialogue_end = 68;
								start_text = speaker.dialogue_text[speaker.dialogue_current];
								text_length = string_length(start_text);
								speaker.dialogue_previous = speaker.dialogue_current;
								characters = 0;
								symbols = 0;
								text = "";
								break;
							case "Skill_no_hp":
								speaker.dialogue_current = 75;
								speaker.dialogue_end = 75;
								start_text = speaker.dialogue_text[speaker.dialogue_current];
								text_length = string_length(start_text);
								speaker.dialogue_previous = speaker.dialogue_current;
								characters = 0;
								symbols = 0;
								text = "";
								break;
						}
						break;
					case 41:
						speaker.dialogue_current = 42;
						speaker.dialogue_end = 46;
						showed = true;
						obj_button_fight.shining = false;
						obj_battle_manager.attack_type = bone_attack_1;
						obj_battle_manager.attack_time = 210;
						obj_battle_manager.alarm[3] = 1;
						break;
					case 46:
						obj_button_item.moving = true;
						obj_button_item.shining = true;
						obj_button_item.sprite_index = obj_button_item.default_sprite;
						if !instance_exists(obj_spaghetti) {
							instance_create_depth(room_width/2, room_height/2, 0, obj_spaghetti);
						}
						for (var _i = 0; _i < 8; _i++) {
							if global.item_IDs[_i] == 0 or global.item_IDs[_i] == 10 {
								global.item_IDs[_i] = 10;
								global.items[_i] = obj_spaghetti;
								break;
							}
						}
						speaker.dialogue_current = 64; //диалоги на случай, если предмет не использован
						speaker.dialogue_end = 68;
						obj_battle_manager.alarm[1] = 10;
						showed = true;
						break;
					case 63:
						speaker.dialogue_end = 52; //76,81 диалоги после использования скилла
						speaker.dialogue_current = 63;
						obj_battle_manager.alarm[1] = 10;
						showed = true;
						break;
					case 64:
						speaker.dialogue_end = 63; //диалоги после использования скилла
						speaker.dialogue_current = 52;
						obj_battle_manager.alarm[1] = 10;
						showed = true;
						break;
					case 68: //если не стали использовать предмет сразу
						obj_button_item.shining = false;
						speaker.dialogue_current = 52;
						speaker.dialogue_end = 63;
						start_text = speaker.dialogue_text[speaker.dialogue_current];
						text_length = string_length(start_text);
						speaker.dialogue_previous = speaker.dialogue_current;
						characters = 0;
						symbols = 0;
						text = "";		
						break;
					case 73: //после применения навыка
						speaker.dialogue_current = 76;
						speaker.dialogue_end = 81;
						showed = true;
						obj_button_fight.shining = false;
						obj_battle_manager.attack_type = bone_attack_1;
						obj_battle_manager.attack_time = 210;
						obj_battle_manager.alarm[3] = 1;
						break;
					case 75:
						obj_battle_manager.alarm[1] = 10;
						showed = true;
						break;
					case 81:
						obj_battle_manager.can_spare = true;
						obj_gate_guard.can_be_spared = true;
						obj_battle_manager.alarm[1] = 10;
						showed = true;
						break;
				}				
			}
		}
	}
}