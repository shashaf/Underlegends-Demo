/// @description Запуск диалога
// You can write your code in this editor
dialogue_bubble = instance_create_depth(x + 50, y - 45, 0, obj_battle_dialogue);
//instance_create_depth(dialogue_x, dialogue_y, 0, obj_battleDialogue);

with (dialogue_bubble) {
	speaker = obj_gate_guard;
	//speaker.sprite_index = speaker.talking_sprite;
	sprite_index = spr_bubble_horizontal_long;
	voice = snd_papyrus_voice;
	start_text = other.dialogue_text[other.dialogue_current];
	text_length = string_length(start_text);
	font = fnt_battle_dialogue_gate_guard_rus;
}
//if sprite_index != spr_lemike_battle_defeated {
	sprite_index = talking_sprite;
//}
dialogue_previous = dialogue_current;
//dialogue_current = choose(0, 1, 2);
/*if dialogue_current < dialogue_end {
	dialogue_current++;
}*/




