item_number = 1;
action_type = 1; //1 - Use, 2 - Info, 3 - DROP
action_text = "";
action_text_length = string_length(action_text);
copied = false; //для проверки выполненности действия

text_to_draw = "";
characters = 0;
text = 0;
increase = 1;

//timer = 0;
/*if action_type == 3 {
	audio_play_sound(snd_itemDrop, 10, 0);
}
else {
	audio_play_sound(snd_itempick_up, 10, 0);
}*/
box_y = box_y_check(); //сообщаем координаты для отрисовки текста
text_x = 80;
if (room == rm_reject0 or room == rm_reject1 or room == rm_reject2) {
	sprite_index = spr_dialogue_box2_yellow;
}
if instance_exists(obj_dark_room){
	depth = obj_dark_room.depth - 1;
}