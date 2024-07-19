obj_bravery_cutscene1.sprite_index = spr_bravery_right_talking;
obj_bravery_cutscene1.object_sprite = spr_bravery_right_talking;
obj_froggit_cutscene1.hspeed = 0;
with (obj_bravery_cutscene1) {
	dialogue_current = 2;
	dialogue_start = 2;
	dialogue_end = 3;
	timeline_auto_position = 321;
	dialogue_length = string_length(dialogue[dialogue_current]);
}