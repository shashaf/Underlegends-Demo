obj_bravery_cutscene2.image_index = 0;
obj_bravery_cutscene2.hspeed = 0;
obj_bravery_cutscene2.image_speed = 0;
obj_bravery_cutscene2.sprite_index = spr_bravery_right_talking;
obj_bravery_cutscene2.object_sprite = spr_bravery_right_talking;
with (obj_bravery_cutscene2) {
	dialogue_current = 2;
	dialogue_start = 2;
	dialogue_end = 3;
	timeline_auto_position = 130;
	dialogue_length = string_length(dialogue[dialogue_current]);
}