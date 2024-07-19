obj_froggit_cutscene1.hspeed = 0;
instance_destroy(obj_toy_knife);
if !audio_is_playing(snd_item_pick_up) {
	audio_play_sound(snd_item_pick_up, 0, 0);
}
with (obj_bravery_cutscene1) {
	dialogue_current = 4;
	dialogue_start = 4;
	dialogue_end = 4;
	timeline_auto_position = 400;
	dialogue_length = string_length(dialogue[dialogue_current]);
}