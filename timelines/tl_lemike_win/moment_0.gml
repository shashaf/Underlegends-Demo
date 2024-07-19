obj_patience.sprite_index = spr_patience_up;
obj_lemike_win.tl_speed = 0;
with(obj_lemike_cutscene3) {
	dialogue_current = 80;
	dialogue_start = 80;
	dialogue_end = 84;
	if global.language == "rus" {
		dialogue_current = 79;
		dialogue_start = 79;
		dialogue_end = 83;
	}
	dialogue_length = string_length(dialogue[dialogue_current]);
	timeline_auto_position = 10;
}
obj_lemike_cutscene3.begin_dialogue = true;