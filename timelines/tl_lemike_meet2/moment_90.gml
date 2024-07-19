obj_lemike_meet2.tl_speed = 0;
with(obj_lemike_cutscene2) {
	dialogue_current = 25;
	dialogue_start = 25;
	dialogue_end = 30;
	dialogue_length = string_length(dialogue[dialogue_current]);
	timeline_auto_position = 100;
	begin_dialogue = true;
}