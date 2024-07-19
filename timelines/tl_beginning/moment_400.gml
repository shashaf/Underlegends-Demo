obj_bravery_cutscene1.sprite_index = spr_bravery_down_talking;
obj_bravery_cutscene1.sprite_index = spr_bravery_down_talking;
obj_bravery_cutscene1.object_sprite = spr_bravery_down_talking;
obj_froggit_cutscene1.hspeed = - 10;
with (obj_bravery_cutscene1) {
	dialogue_current = 5;
	dialogue_start = 5;
	dialogue_end = 6;
	timeline_auto_position = 410;
	dialogue_length = string_length(dialogue[dialogue_current]);
}