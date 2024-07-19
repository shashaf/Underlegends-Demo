/// @description Запуск диалога
// You can write your code in this editor
//if (obj_battleManager.enemies[0] != obj_lemike) {
	dialogue_bubble = instance_create_depth(x, y - 31, 0, obj_battle_dialogue);
	//instance_create_depth(dialogue_x, dialogue_y, 0, obj_battleDialogue);

	with (dialogue_bubble) {
		speaker = obj_froggit_yellow;
		start_text = other.dialogue_text[other.dialogue_current];
		text_length = string_length(start_text);
		}
		dialogue_previous = dialogue_current;
		dialogue_current = choose(0, 1, 2);
		while (dialogue_current == dialogue_previous) {
			dialogue_current = choose(0, 1, 2);
		}
//}



