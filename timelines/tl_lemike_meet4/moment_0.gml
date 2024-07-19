obj_patience.sprite_index = spr_patience_up;
obj_lemike_meet4.tl_speed = 0;
with(obj_lemike_cutscene3) {
	dialogue_current = 78;
	dialogue_start = 78;
	dialogue_end = 79;
	if global.language == "rus" {
		dialogue_current = 77;
		dialogue_start = 77;
		dialogue_end = 78;
	}
	dialogue_length = string_length(dialogue[dialogue_current]);
	timeline_auto_position = 199;
}
obj_lemike_cutscene3.begin_dialogue = true;