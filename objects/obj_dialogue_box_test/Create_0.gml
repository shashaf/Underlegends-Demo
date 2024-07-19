image_xscale = 2;
image_yscale = 2;
x = 65*2;
y = 350*2; //или 20, или 350
text_x = 170*2; //или 170, или 80
text_y = y + 15*2;
sprite_index = spr_dialogue_box3_yellow;
sprite_with_avatar = spr_dialogue_box3_yellow;
sprite_without_avatar = spr_dialogue_box2_yellow;
avatar_sprite = spr_lemike_dialogue_serious;
font = fnt_dialogue;
if text_x == 340 and !instance_exists(obj_dialogue_avatar) {
	instance_create_depth(90*2, y + 25*2, 0, obj_dialogue_avatar)
	obj_dialogue_avatar.sprite_index = avatar_sprite;
	obj_dialogue_avatar.image_xscale = 2;
	obj_dialogue_avatar.image_yscale = 2;
}

dialogue_start = 2;
dialogue_current = dialogue_start;
dialogue_end = 2;

dialogue[0] = "* You reminded that 3 people\n  worked on Lemike's design.\n* She was embarrassed again."
dialogue[1] = "* You tell the sheriff the\n  battle music theme is cool.\n* She nods contentedly.";
dialogue[2] = "* You challenged her to a\n  duel again but it didn't\n  changed anything.";
dialogue[3] = "* You praised Lemike's\n  own attacks. She smirked.\n* Her ATTACK hasn't changed.";

dialogue_length = string_length(dialogue[dialogue_current]);
dialogue_draw = string_copy(dialogue[dialogue_current], 0, dialogue_length);