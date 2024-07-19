obj_patience.sprite_index = spr_patience_up;
obj_lemike_win.tl_speed = 0;
with(obj_lemike_cutscene3) {
	dialogue_current = 85;
	dialogue_start = 85;
	dialogue_end = 88;
	if global.language == "rus" {
		dialogue_current = 84;
		dialogue_start = 84;
		dialogue_end = 87;
	}
	dialogue_length = string_length(dialogue[dialogue_current]);
	timeline_auto_position = 149;
}
obj_lemike_cutscene3.begin_dialogue = true;