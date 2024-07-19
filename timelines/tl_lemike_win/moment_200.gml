obj_patience.sprite_index = spr_patience_up;
obj_lemike_win.tl_speed = 0;
with(obj_lemike_cutscene3) {
	dialogue_current = 89;
	dialogue_start = 89;
	dialogue_end = 97;
	if global.language == "rus" {
		dialogue_current = 88;
		dialogue_start = 88;
		dialogue_end = 96;
	}
	dialogue_length = string_length(dialogue[dialogue_current]);
	timeline_auto_position = 249;
}
obj_lemike_cutscene3.begin_dialogue = true;