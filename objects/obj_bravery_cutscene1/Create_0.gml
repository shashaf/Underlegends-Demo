event_inherited();
image_index = 0;
image_speed = 0;

box_sprite = spr_dialogue_box3;
dialogue_x = 80;
dialogue_font = fnt_dialogue_rus;
//dialogue_sprite = spr_starlo_dialog;
dialogue_sprite = spr_dialogue_empty;
object_sprite = spr_bravery_right;
dialogue_voice = snd_text2;
cutscene = obj_beginning_cutscene; //катсцена, в которой участвует NPC
timeline_auto_position = 275; //позиция таймлайна, с которой нажатие кнопок не требуется

dialogue[0] = "* Are we... alive?";
dialogue[1] = "* " + global.human_1_name + "?";
dialogue[2] = "* Hey, you!";
dialogue[3] = "* Stay there!";
dialogue[4] = "* I said stay there!";
dialogue[5] = "* Don't touch the knife!";
dialogue[6] = "* It's important for...";

if global.language == "rus" {
	dialogue[0] = "* Мы... живы?";
	dialogue[2] = "* Эй, ты!";
	dialogue[3] = "* Стой!";
	dialogue[4] = "* Я сказал стой!";
	dialogue[5] = "* Не трогай нож!";
	dialogue[6] = "* Он важен для...";
}

dialogue_length = string_length(dialogue[dialogue_current]);

dialogue_end = 1;

if global.game_status != 0 {
	instance_destroy();
}