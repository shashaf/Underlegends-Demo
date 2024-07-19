event_inherited();
image_index = 0;
image_speed = 0;

box_sprite = spr_dialogue_box3;
dialogue_x = 80;
dialogue_font = fnt_dialogue_rus;
//dialogue_sprite = spr_starlo_dialog;
dialogue_sprite = spr_dialogue_empty;
object_sprite = spr_bravery_right_talking;
dialogue_voice = snd_text2;
cutscene = obj_froggit_flee_cutscene; //катсцена, в которой участвует NPC
timeline_auto_position = 30; //позиция таймлайна, с которой нажатие кнопок не требуется

dialogue[0] = "* " + global.human_1_name + "!";
dialogue[1] = "* Finally!\n* Stay there.";
dialogue[2] = "* Gotcha, little damn frog!";
dialogue[3] = "* Now you WILL NOT ESCAPE!";

if global.language == "rus" {
	dialogue[1] = "* Наконец-то!\n* Стой там.";
	dialogue[2] = "* Попался, чёртов\n  лягушонок!";
	dialogue[3] = "* Теперь тебе НЕ СБЕЖАТЬ!";
}

dialogue_length = string_length(dialogue[dialogue_current]);

dialogue_end = 1;

x_before_shaking = x;
y_before_shaking = y;
shaking = false;

shake_x = 2;
shake_y = 1;