/// @description Insert description here
// You can write your code in this editor
event_inherited();
image_index = 0;
image_speed = 0;


dialogue_font = fnt_dialogue_rus;
dialogue_sprite = spr_flowey_dialogue3;
object_sprite = spr_flowey_talking;
dialogue_voice = snd_flowey_voice;
cutscene = obj_cutscene1; //катсцена, в которой участвует NPC
timeline_auto_position = 219; //позиция таймлайна, с которой нажатие кнопок не требуется
if global.language == "rus" {
	dialogue[0] = "* Хэй, приятель.";
	dialogue[1] = "* Ты правда думаешь, что\n  можешь просто...\n  ...уйти?";
	dialogue[2] = "* Без теста катсцены?";
	dialogue[3] = "* Хи хи хи."
	dialogue[4] = "* Нет.";
	dialogue[5] = "* Мы должны тестировать\n  КАЖДУЮ механику в игре.";
	dialogue[6] = "* Битвы, таблички."
	dialogue[7] = "* Диалоги с NPC,\n  предметы."
	dialogue[8] = "* Сохранения, загрузки,\n  случайные fun события.";
	dialogue[9] = "* А?";
	dialogue[10] = "* Да, я сказал\n  \"fun события\".";
	//dialogue[11] = "* События, которые появляются\n  в зависимости от\n  случайного значения fun.";
	dialogue[11] = "* События, которые\n  зависят от случайного\n  значения fun.";
	dialogue[12] = "* Что может ими быть?";
	dialogue[13] = "* Нет, мой друг, так\n  было бы слишком просто.";
	dialogue[14] = "* Просто исследуй мир,\n  и кто знает...~\n* Может быть, найдёшь их.";
	dialogue[15] = "* Знаешь...~\n* Это небольшой спойлер,\n  но меня...";
	dialogue[16] = "* Меня не будет в полной\n  версии игры.";
	dialogue[17] = "* Значит ты не можешь\n  винить меня за то, что\n  я хочу поиграть дольше.";
	dialogue[18] = "* Так что, я не буду\n  помогать тебе найти\n  все секреты.";
	dialogue[19] = "* Если хочешь быть\n  хорошим тестировщиком,\n  ты придёшь сюда снова.";
	dialogue[20] = "* И я даже не буду знать,\n  сколько раз ты делал\n  это.";
	dialogue[21] = "* Потому что для поиска\n  нового секрета ты\n  СОТРЁШЬ сохранение.";
	dialogue[22] = "* Тогда появится\n  новое fun значение,\n  но мои воспоминания...";
	dialogue[23] = "* Они будут стёрты.";
	dialogue[24] = "* И я повторю этот\n  монолог снова\n  и снова.";
	dialogue[25] = "* Но не переживай.";
	dialogue[26] = "* У тебя должен быть\n  кто-то, кто поможет\n  найти все секреты.";
	dialogue[27] = "* Ты же не можешь быть\n  настолько одинок,\n  правда?";
	dialogue[28] = "* По крайней мере, ты\n  откуда-то знаешь об\n  этом прототипе.";
	dialogue[29] = "* Удачи, " + global.human_1_name + "!";

	dialogue_end = 29;
	if global.letter == "z" {
		dialogue[0] = "* А вот и ты.";
		dialogue[1] = "* Знаешь, я думал о том,\n  почему ты здесь.";
		dialogue[2] = "* Даже после всего ЭТОГО.";
		dialogue[3] = "* Я решил что... Может,\n  ты просто всё ещё\n  ищешь секреты.";
		dialogue[4] = "* И раз ты ТАК любишь\n  играть со мной, я хочу\n  дать тебе подсказку.";
		dialogue[5] = "* Всего существует 9 fun\n  событий.";
		dialogue[6] = "* Их довольно легко\n  отследить.";
		dialogue[7] = "* Если что-то появляется\n  в одном прохождении\n  и пропадает в другом...";
		dialogue[8] = "* Можешь быть уверен,\n  что нашёл fun событие.";
		dialogue[9] = "* Я не всегда тебя вижу,\n  поэтому не знаю,\n  сколько ты уже нашёл.";
		dialogue[10] = "* Но тебе стоит\n  запомнить это.";
		dialogue[11] = "* Если ты увидишь все 9,\n  то мои поздравления,\n  я полагаю.";
		dialogue[12] = "* Это всё.";
		dialogue[13] = "* Удачи, " + global.previous_name + "!";
		dialogue_end = 13;
	}
}
else {
	dialogue[0] = "* Hey buddy.";
	dialogue[1] = "* Did you really think\n  that you could just...\n  leave?";
	dialogue[2] = "* Without the cutscene\n  test?";
	dialogue[3] = "* He he he."
	dialogue[4] = "* No.";
	dialogue[5] = "* We have to test EVERY\n  mechanic in the game.";
	dialogue[6] = "* Battles, tablets."
	dialogue[7] = "* NPC dialogues, items."
	dialogue[8] = "* Saving, loading,\n  random fun events.";
	dialogue[9] = "* Huh?";
	dialogue[10] = "* Yeah, I said fun\n  events.";
	dialogue[11] = "* Events that appear\n  depending on the\n  random fun value.";
	dialogue[12] = "* What could it be?";
	dialogue[13] = "* No, my friend, that\n  would be too easy.";
	dialogue[14] = "* Just explore the world\n  and who knows...~\n* Maybe you'll find out.";
	dialogue[15] = "* You know...~\n* It's a small spoiler\n  but I...";
	dialogue[16] = "* I won't be in the\n  full game.";
	dialogue[17] = "* So you can't blame me\n  for wanting to play\n  with you longer.";
	dialogue[18] = "* Therefore, I won't\n  help you find all the\n  secrets.";
	dialogue[19] = "* If you wanna be a good\n  tester, you will come\n  here again and again.";
	dialogue[20] = "* And I won't even know\n  how many times you've\n  done this.";
	dialogue[21] = "* Because to find a new\n  secret, you will have\n  to RESET your save.";
	dialogue[22] = "* Then a new fun value\n  will be generated,\n  but my memories...";
	dialogue[23] = "* They will be erased.";
	dialogue[24] = "* And I will repeat this\n  monologue again and\n  again.";
	dialogue[25] = "* But don't worry.";
	dialogue[26] = "* You must have someone\n  who can help you find\n  them all.";
	dialogue[27] = "* You can't be that\n  lonely, right?";
	dialogue[28] = "* At least you somehow\n  found out about this\n  prototype.";
	dialogue[29] = "* Good luck, " + global.human_1_name + "!";

	dialogue_end = 29;
	if global.letter == "z" {
		dialogue[0] = "* And here you are.";
		dialogue[1] = "* You know, I've been\n  thinking about why\n  you're here.";
		dialogue[2] = "* Even after all THIS.";
		dialogue[3] = "* I decided that maybe\n  you're just still\n  looking for secrets.";
		dialogue[4] = "* Since you're SO into\n  playing with me, I can\n  give you a little hint.";
		dialogue[5] = "* There are 9 fun events\n  in total.";
		dialogue[6] = "* It's pretty easy to\n  track them down.";
		dialogue[7] = "* If something appears\n  in one run but may not\n  appear in another...";
		dialogue[8] = "* You can be sure that\n  you have found the fun\n  event.";
		dialogue[9] = "* I still don't always\n  see you...";
		dialogue[10] = "* So I don't know how\n  many of them you've\n  seen.";
		dialogue[11] = "* But you must remember\n  this.";
		dialogue[12] = "* If you've seen all 9,\n  then congratulations,\n  I guess.";
		dialogue[13] = "* That's all.";
		dialogue[14] = "* Good luck, " + global.previous_name + "!";
		dialogue_end = 14;
	}
}



dialogue_length = string_length(dialogue[dialogue_current]);

change_spr = false;