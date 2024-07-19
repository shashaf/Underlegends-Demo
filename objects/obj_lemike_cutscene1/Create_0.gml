event_inherited();
image_index = 0;
image_speed = 0;


if (global.lemike > 0) {
	instance_destroy();
}


box_sprite = spr_dialogue_box3_yellow;
dialogue_font = fnt_dialogue_rus;
//dialogue_sprite = spr_starlo_dialog;
dialogue_sprite = spr_lemike_dialogue;
object_sprite = spr_lemike_left_talking;
dialogue_voice = snd_lemike_voice;
cutscene = obj_lemike_meet1; //катсцена, в которой участвует NPC
timeline_auto_position = 235; //позиция таймлайна, с которой нажатие кнопок не требуется

dialogue[0] = "* Hey.";
dialogue[1] = "* This happened to you\n  too, right?";
dialogue[2] = "* My condolences.\n* You must be very sad.";
dialogue[3] = "* To be abandoned.";
dialogue[4] = "* To be useless.";
dialogue[5] = "* Rejected.";
dialogue[6] = "* I understand you.";
dialogue[7] = "* I know... this\n  feeling.";
dialogue[8] = "* Though, you know...";
dialogue[9] = "* Yeah, that's right.";
dialogue[10] = "* You probably don't\n  understand yet.";
dialogue[11] = "* Let's go take a look\n  around.";
if global.language == "rus" {
	dialogue[0] = "* Хэй.";
	dialogue[1] = "* Это случилось и с\n  тобой, да?";
	dialogue[2] = "* Соболезную.\n* Тебе, должно быть,\n  очень грустно.";
	dialogue[3] = "* Оказаться брошенным.";
	dialogue[4] = "* Оказаться ненужным.";
	dialogue[5] = "* Отвергнутым.";
	dialogue[6] = "* Я понимаю тебя.";
	dialogue[7] = "* Мне знакомо...\n  это чувство.";
	dialogue[8] = "* А впрочем...";
	dialogue[9] = "* Да, что это я.";
	dialogue[10] = "* Наверное, ты ещё не\n  понимаешь.";
	dialogue[11] = "* Пойдём, осмотришься.";
}

dialogue_length = string_length(dialogue[dialogue_current]);

dialogue_end = 5;