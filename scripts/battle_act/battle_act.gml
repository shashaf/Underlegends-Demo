// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function battle_act(_selected_act){
	battle_state = "acting";
	text_to_draw = "";
	characters = 0;
	obj_soul_battle.x = soul_start_x + 158;
	obj_soul_battle.y = soul_start_y;
	switch(_selected_act) {
		case 0:
			current_text = enemies[selected_enemy].check_text;
			if enemies[selected_enemy] == obj_gate_guard {
				if (enemies[selected_enemy].act2 == "") {
					enemies[selected_enemy].act2 = "* Воодушевить";
					enemies[selected_enemy].act3 = "* Оскорбить";
				}
				else {
					var _speaker = enemies[selected_enemy];
					switch (obj_battle_manager.tutorial_state) {
						case "Fight":
							_speaker.dialogue_current = 34;
							_speaker.dialogue_end = 34;
							start_text = _speaker.dialogue_text[_speaker.dialogue_current];
							text_length = string_length(start_text);
							_speaker.dialogue_previous = _speaker.dialogue_current;
							characters = 0;
							symbols = 0;
							text = "";
							break;
						case "Skill":
							_speaker.dialogue_current = 62;
							_speaker.dialogue_end = 63;
							start_text = _speaker.dialogue_text[_speaker.dialogue_current];
							text_length = string_length(start_text);
							_speaker.dialogue_previous = _speaker.dialogue_current;
							characters = 0;
							symbols = 0;
							text = "";
							break;
						case "Item":
							_speaker.dialogue_current = 64;
							_speaker.dialogue_end = 68;
							start_text = _speaker.dialogue_text[_speaker.dialogue_current];
							text_length = string_length(start_text);
							_speaker.dialogue_previous = _speaker.dialogue_current;
							characters = 0;
							symbols = 0;
							text = "";
							break
					}
				}
			}
			//alarm[2] = 120;
			break;
		case 1:
			current_text = enemies[selected_enemy].act2_text;
			enemies[selected_enemy].alarm[1] = 1;
			break;
		case 2:
			current_text = enemies[selected_enemy].act3_text;
			enemies[selected_enemy].alarm[2] = 1;
			break;
		case 3:
			current_text = enemies[selected_enemy].act4_text;
			enemies[selected_enemy].alarm[3] = 1;
			break;
	}	
}