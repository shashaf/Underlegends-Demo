if instance_exists(obj_alert) {
	instance_destroy(obj_alert);
}
audio_stop_sound(mus_sheriff);
audio_play_sound(mus_sheriff_prebattle, 0, 1);
with(obj_lemike_cutscene3) {
	dialogue_current = 61;
	dialogue_start = 61;
	dialogue_end = 77;
	if global.language == "rus" {
		dialogue_current = 60;
		dialogue_start = 60;
		dialogue_end = 76;
	}
	dialogue_length = string_length(dialogue[dialogue_current]);
	timeline_auto_position = 200;
}
