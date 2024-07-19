/// @description Удаление себя
// You can write your code in this editor
image_index = 0;
image_speed = 0;
instance_destroy(obj_dialogue_avatar);
in_dialogue = false;
obj_patience.can_move = true;
//dialogue_start = dialogue_talked; //вот здесь часть про то, что уже поговорили один раз
dialogue_end = dialogue_talked_end;
//talked = true;
//dialogue_current = dialogue_start;
dialogue_current = dialogue_talked;
dialogue_draw = "";
increase = default_increase;
characters = 0;
next_m = false;
//ok = false;
text = 0;
pause = false;
dialogue_length = string_length(dialogue[dialogue_current]);
//need_buffer = true;
global.stranger_talked = 2;
instance_destroy(obj_all_dark);
instance_destroy();

