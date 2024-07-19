event_inherited();
image_index = 0;
image_speed = 0;


if (global.lemike > 1) {
	instance_destroy();
}

dialogue_font = fnt_dialogue_rus;
box_sprite = spr_dialogue_box3_yellow;

dialogue_sprite = spr_lemike_dialogue;
//object_sprite = spr_starlo_down_talking;
object_sprite = spr_lemike_down;
dialogue_voice = snd_lemike_voice;
cutscene = obj_lemike_meet2; //катсцена, в которой участвует NPC
timeline_auto_position = 29; //позиция таймлайна, с которой нажатие кнопок не требуется

dialogue[0] = "* You probably have a\n  lot of questions.";
dialogue[1] = "* Well, I will be happy\n  to answer.";
dialogue[2] = "* I'm pretty bored here.";
dialogue[3] = "* It's hard to be the\n  only living rejected\n  person, you know.";
dialogue[4] = "* What would you like\n  to know?";

dialogue[5] = "* Where are we?";
dialogue[6] = "* This it the Rejected\n  Dimension.";
dialogue[7] = "* Everything that was\n  once considered useful\n  goes here.";
dialogue[8] = "* Because then it ceased\n  to be so.";
dialogue[9] = "* Ideas.\n* Concepts.";
dialogue[10] = "* Monsters.\n* Humans.";
dialogue[11] = "* All goes here.";
dialogue[12] = "* It's quite strange\n  here.";
dialogue[13] = "* Here are no colors\n  at all and everything\n  is different.";
dialogue[14] = "* Even the dialogue\n  boxes are yellow.";
dialogue[15] = "* Otherwise they would\n  blend into the space.";
dialogue[16] = "* Doesn't look like my\n  desert at all...";

dialogue[17] = "* Me?";
dialogue[18] = "* Hah...";
dialogue[19] = "* Consider me nobody.";
dialogue[20] = "* Just another rejected\n  idea.";
dialogue[21] = "* I don't even have\n  a name.";
dialogue[22] = "* I used to be an\n  adventurer like you...";
dialogue[23] = "* Meh.";
dialogue[24] = "* Then my journey ended\n  up in a trash bin\n  on someone's desktop.";

dialogue[25] = "* There's a lot of\n  things here.";
dialogue[26] = "* Everything has its\n  own story.";
dialogue[27] = "* At first, it's even\n  interesting to explore.";
dialogue[28] = "* Hmm, you know...";
dialogue[29] = "* I think you'll find\n  this particularly\n  intriguing.";
dialogue[30] = "* Come, I'll show you\n  my corridor.";
if global.language == "rus" {
	dialogue[0] = "* У тебя, наверное, \n  много вопросов.";
	dialogue[1] = "* Что ж, с радостью\n  отвечу.";
	dialogue[2] = "* Я порядком заскучала\n  здесь.";
	dialogue[3] = "* Тяжело быть\n  единственной живой\n  отвергнутой, знаешь ли.";
	dialogue[4] = "* Что тебя интересует?";

	dialogue[5] = "* Где мы?";
	dialogue[6] = "* Это измерение\n  отвергнутых.";
	dialogue[7] = "* Сюда попадает всё, что\n  когда-то считалось\n  нужным.";
	dialogue[8] = "* А потом перестало\n  таким быть.";
	dialogue[9] = "* Идеи.~\n* Концепции.";
	dialogue[10] = "* Монстры.~\n* Люди.";
	dialogue[11] = "* Всё попадает сюда.";
	dialogue[12] = "* Тут довольно странно.";
	dialogue[13] = "* Совсем нет красок\n  и всё другое.";
	dialogue[14] = "* Даже диалоговые рамки\n  жёлтые.";
	dialogue[15] = "* Иначе сливались бы\n  с пространством.";
	dialogue[16] = "* Совсем не похоже на\n  мою пустыню...";

	dialogue[17] = "* Я?";
	dialogue[18] = "* Хах...";
	dialogue[19] = "* Считай, что никто.";
	dialogue[20] = "* Очередная отвергнутая\n  идея.";
	dialogue[21] = "* Даже именем не\n  обзавелась.";
	dialogue[22] = "* Когда-то и меня вела\n  дорога приключений,\n  но...";
	dialogue[23] = "* Мда.";
	dialogue[24] = "* Кажется, она привела\n  меня в корзину на\n  чьём-то рабочем столе.";

	dialogue[25] = "* Тут есть много разного.";
	dialogue[26] = "* У всего своя история.";
	dialogue[27] = "* Первое время даже\n  интересно поизучать.";
	dialogue[28] = "* Хм, знаешь...";
	dialogue[29] = "* Думаю, это будет для\n  тебя особенно\n  интересно.";
	dialogue[30] = "* Пойдём, я покажу свой\n  коридор.";
}
dialogue_length = string_length(dialogue[dialogue_current]);

dialogue_end = 4;

read_option = 0;