/// @description Запуск диалога
// You can write your code in this editor
dialogue_bubble = instance_create_depth(x + 50, y - 45, 0, obj_battle_dialogue);
//instance_create_depth(dialogue_x, dialogue_y, 0, obj_battleDialogue);

with (dialogue_bubble) {

	if (other.dialogue_current == 0 or other.dialogue_current == 4 or (other.dialogue_current >= 8 and
	other.dialogue_current <=11) or other.dialogue_current == 48 or (other.dialogue_current >= 50 and other.dialogue_current <= 54)
	or (other.dialogue_current >= 56 and other.dialogue_current <= 57)) {
		sprite_index = spr_bubble_small;
	}
	else {
		sprite_index = spr_bubble_vertical;
	}
	speaker = obj_lemike;
	//speaker.sprite_index = speaker.talking_sprite;
	
	voice = snd_lemike_voice;
	start_text = other.dialogue_text[other.dialogue_current];
	text_length = string_length(start_text);
}
if sprite_index != spr_lemike_battle_defeated {
	sprite_index = talking_sprite;
}
dialogue_previous = dialogue_current;
//dialogue_current = choose(0, 1, 2);
if dialogue_current < dialogue_end {
	dialogue_current++;
}




