avatar = spr_dialogue_empty;
voice = snd_text2;
font = fnt_dialogue;
contact = 0;


text_to_draw = "";
characters = 0;
increase = 1;
can_draw = true;

symbols = 1;
width = 0
row = 0;
text_height = 28;

text_x = 80;
text_x_with_avatar = 80;
box_y = box_y_check();
if global.language == "rus" {
	messages[0] = "* Звонок...";
	font = fnt_dialogue_rus;
}
else {
	messages[0] = "* Ring...";
}
current_text = messages[0];

messages_current = 0;
messages_end = 0;
text_length = string_length(current_text);
if (room == rm_reject0 or room == rm_reject1 or room == rm_reject2) {
	sprite_index = spr_dialogue_box2_yellow;
}
if instance_exists(obj_dark_room){
	depth = obj_dark_room.depth - 1;
}