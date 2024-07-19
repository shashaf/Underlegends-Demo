is_saving = false;
room_name = "";
can_draw = false;
box_sprite = spr_dialogue_box2;
if (room == rm_reject0 or room == rm_reject1 or room == rm_reject2) {
	sprite_index = spr_save;
	box_sprite = spr_dialogue_box2_yellow;
}


if (global.enough == 0) {
	if global.language == "rus" {
		messages[0] = "* Ваше терпение наградило Вас\n  небольшим отдыхом.";
		messages[2] = "* ОЗ полностью восстановлены.";
	}
	else {
		messages[0] = "* Your patience rewarded you\n  with a little rest.";
		messages[2] = "* HP fully restored.";
	}
	messages[1] = "";
	message_end = 2;
}
else {
	if global.language == "rus" {
		messages[0] = "* Терпение.";
	}
	else {
		messages[0] = "* Patience.";
	}
	message_end = 0;
}
message_current = 0;
message_length = string_length(messages[message_current]);
next_m = false;
characters = 0;
increase = 1;
text = 0;

state = 0;
if obj_patience.y >= global.camera_y + 240 {
	box_y = 20;
}
else {
	box_y = 350;
}