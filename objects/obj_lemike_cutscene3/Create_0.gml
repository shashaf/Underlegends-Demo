 event_inherited();
image_index = 0;
image_speed = 0;

if global.player_lv > 1 {
	instance_destroy();
}

box_sprite = spr_dialogue_box3_yellow;

dialogue_font = fnt_dialogue_rus;
//dialogue_sprite = spr_starlo_dialog;
dialogue_sprite = spr_lemike_dialogue_serious;
//object_sprite = spr_starlo_down_talking;
object_sprite = spr_lemike_down;
dialogue_voice = snd_lemike_voice;
cutscene = obj_lemike_meet3; //катсцена, в которой участвует NPC
timeline_auto_position = 99; //позиция таймлайна, с которой нажатие кнопок не требуется

dialogue[0] = "* So, what do you think?";
dialogue[1] = "* Awkward, I suppose.";
dialogue[2] = "* Everything feels so\n  raw and hastily put\n  together.";
dialogue[3] = "* Although that frame\n  from the intro\n  was nice.";
dialogue[4] = "* It, like everything\n  else, was part of one\n  story.";
dialogue[5] = "* A big project.\n* A dream fangame.";
dialogue[6] = "* The story of other\n  human souls.";
dialogue[7] = "* Initially blue and\n  yellow, as you might\n  have noticed.";
dialogue[8] = "* Then light-blue and\n  yellow.";
dialogue[9] = "* Then light-blue and\n  orange.";
dialogue[10] = "* Undertale: Prehistory.";
dialogue[11] = "* Brrr, so much grandeur.";
dialogue[12] = "* And this cover from\n  MS Paint...\n* It's hilarious!";
dialogue[13] = "* What strange things\n  you come up with\n  when you are 17!";
dialogue[14] = "* No wonder all of this\n  is here now.";
dialogue[15] = "* And the title is\n  different now.";
dialogue[16] = "* Underlegends:\n  Patience and Bravery.";
dialogue[17] = "* Not much, but still\n  better, what do you\n  think?";
dialogue[18] = "* Yes, surprisingly, the\n  project is still alive.";
dialogue[19] = "* And I was a part of\n  it for a very long\n  time.";
dialogue[20] = "* An entire chapter was\n  dedicated to me!";
dialogue[21] = "* A Wild West setting\n  with a cool Sheriff\n  boss.";
dialogue[22] = "* Based on some desert\n  creature.";
dialogue[23] = "* Like a fennec fox.";
dialogue[24] = "* With its own concept\n  of Justice and a duel\n  with a human.";
dialogue[25] = "* Maybe even with horse\n  chases and target\n  shooting.";
dialogue[26] = "* That's how I came into\n  existence.";
dialogue[27] = "* An idea waiting for\n  its time.";
dialogue[28] = "* I was one of the first\n  and was ready to wait\n  for a long time.";
dialogue[29] = "* As soon as I got my\n  own music theme, I was\n  so happy.";
dialogue[30] = "* I believed that with\n  it,  I would appeal to\n  people.";
dialogue[31] = "* I could be a part of\n  something bigger.";
dialogue[32] = "* But recently...";
dialogue[33] = "* Something happened.";
dialogue[34] = "* The world saw\n  Undertale Yellow.";
dialogue[35] = "* A prequel about Clover,\n  the yellow soul.";
dialogue[36] = "* It wasn't something\n  sudden.";
dialogue[37] = "* People had been\n  waiting for it for\n  7 years.";
dialogue[38] = "* Before its release,\n  the yellow soul ended\n  up here because of it.";
dialogue[39] = "* But I hoped that I\n  would still have a\n  place in the project.";
dialogue[40] = "* And there it was,\n  until Yellow came out.";
dialogue[41] = "* And the world saw\n  Starlo and Ceroba.";
dialogue[42] = "* Sheriff monster.";
dialogue[43] = "* And a fox-like monster.";
dialogue[44] = "* Both.";
dialogue[45] = "* Key characters of the\n  story.";
dialogue[46] = "* Wow.";
dialogue[47] = "* So, that's how I ended\n  up here for the first\n  time.";
dialogue[48] = "* And you know what was\n  the worst part?";
dialogue[49] = "* Then I was pulled back\n  out.";
dialogue[50] = "* And it happened\n  several times.";
dialogue[51] = "* Oh, these creative\n  fluctuations.";
dialogue[52] = "* \"Don't repeat after\n  others!! Do your own\n  thing!\"";
dialogue[53] = "* \"It doesn't matter if\n  the ideas are similar.\n  The story is the key!\"";
dialogue[54] = "* Back and forth...\n* In the end, the choice\n  wasn't in my favor.";
dialogue[55] = "* And here I am.";
dialogue[56] = "* A rejected idea, along\n  with my horses and\n  targets.";
dialogue[57] = "* Just like these\n  sprites, buttons and\n  souls.";
dialogue[58] = "* With personality,\n  though, but who needs\n  that now...";
dialogue[59] = "* Except for you.";
dialogue[60] = "* Thanks for listening.\n* I'd talk about y...";

dialogue[61] = "* Wait a second...";
dialogue[62] = "* It's you!";
dialogue[63] = "* Your image was in\n  that intro frame.";
dialogue[64] = "* You have a light-blue\n  soul! It hasn't\n  changed since.";
dialogue[65] = "* You're... The current\n  protagonist of the\n  game!";
dialogue[66] = "* Why are you here?";
dialogue[67] = "* You haven't been\n  rejected. You're still\n  part of the story.";
dialogue[68] = "* The story I was thrown\n  out of.";
dialogue[69] = "* Want to assert\n  yourself through me?";
dialogue[70] = "* Rub your usefulness\n  in my face?";
dialogue[71] = "* Hah!";
dialogue[72] = "* We don't do that here,\n  kid.";
dialogue[73] = "* I may be rejected,\n  but I'm still the\n  sheriff.";
dialogue[74] = "* And it's better to\n  listen to the\n  sheriff.";
dialogue[75] = "* In accordance with\n  Law number one of the\n  Rejected Dimension:";
dialogue[76] = "* You are forbidden to\n  be on this territory.";
dialogue[77] = "* And I am allowed to\n  carry out the soul\n  of what was denied.";

dialogue[78] = "* What, wasn't that\n  enough for you?";
dialogue[79] = "* Let's test your\n  patience then.";

dialogue[80] = "* Hah, that was a good\n  battle.";
dialogue[81] = "* I hope that you...";
dialogue[82] = "* Huh, what?";
dialogue[83] = "* Behind me?";
dialogue[84] = "* Are you serious?\n  Tricks like that\n  don't work on me.";
dialogue[85] = "* ...";
dialogue[86] = "* ...";
dialogue[87] = "* ...\n* ...";
dialogue[88] = "* Alright, what is it?";
dialogue[89] = "* A d-door?";
dialogue[90] = "* It...\n* It was never here...";
dialogue[91] = "* Unlikely a door could\n  be rejected, right?";
dialogue[92] = "* I suppose it's the way\n  out.";
dialogue[93] = "* Our way out.";
dialogue[94] = "* We found our purpose\n  and now we're not\n  rejected anymore.";
dialogue[95] = "* Your mission here\n  is successfully\n  completed.";
dialogue[96] = "* Thanks to you, I can\n  finally rest.";
dialogue[97] = "* Thank you, " + global.human_1_name + "!\n* That was really fun!";

dialogue_end = 60;

if global.language == "rus" {
	dialogue[0] = "* Ну как тебе?";
	dialogue[1] = "* Неловко, полагаю.";
	dialogue[2] = "* Всё такое сырое и\n  сделано на коленке.";
	dialogue[3] = "* Хотя тот кадр из интро\n  хорош.";
	dialogue[4] = "* Он, как и всё\n  остальное был\n  частью одной истории.";
	dialogue[5] = "* Большого проекта.\n* Фан игры мечты.";
	dialogue[6] = "* Истории других\n  человеческих душ.";
	dialogue[7] = "* Изначально синей и\n  жёлтой, как ты мог\n  заметить.";
	dialogue[8] = "* Потом голубой и жёлтой.";
	dialogue[9] = "* Затем голубой и\n  оранжевой.";
	dialogue[10] = "* Undertale: Prehistory.";
	dialogue[11] = "* Бррр, сколько пафоса.";
	dialogue[12] = "* Ещё и обложка эта\n  из пейнта. Она была\n  ниже - ну смех же.";
	dialogue[13] = "* Чего только в 17 лет\n  не придумаешь.";
	dialogue[14] = "* Неудивительно, что\n  сейчас всё это здесь.";
	dialogue[15] = "* И название теперь\n  другое.";
	dialogue[16] = "* Underlegends:\n  Patience and Bravery.";
	dialogue[17] = "* Не сказала бы, что\n  сильно, но всё же\n  получше, как считаешь?";
	dialogue[18] = "* Да, удивительно, но\n  проект ещё жив.";
	dialogue[19] = "* И я очень долго была\n  его частью.";
	dialogue[20] = "* Мне была посвящена\n  целая глава!";
	dialogue[21] = "* Сеттинг дикого запада\n  с крутым боссом\n  Шерифом.";
	dialogue[22] = "* Основанным на\n  каком-нибудь\n  пустынном животном.";
	dialogue[23] = "* Например, лиса фенек.";
	dialogue[24] = "* Со своим понятием\n  Справедливости и\n  дуэлью с человеком.";
	dialogue[25] = "* Возможно даже с\n  погоней на лошадях\n  и стрельбой по мишеням.";
	dialogue[26] = "* Так я и появилась на\n  свет.";
	dialogue[27] = "* Идея, ждущая своего\n  часа.";
	dialogue[28] = "* Я была одной из\n  первых и была готова\n  ждать долго.";
	dialogue[29] = "* Как только у меня\n  появилась своя музыка,\n  я была так рада.";
	dialogue[30] = "* Верила, что с ней\n  понравлюсь людям.";
	dialogue[31] = "* Смогу быть частью\n  чего-то большего.";
	dialogue[32] = "* Но недавно...";
	dialogue[33] = "* Кое-что произошло.";
	dialogue[34] = "* Мир увидел\n  Undertale Yellow.";
	dialogue[35] = "* Приквел о Кловере,\n  жёлтой душе.";
	dialogue[36] = "* Это не было чем-то\n  внезапным, люди ждали\n  его восемь лет.";
	dialogue[37] = "* Ещё до выхода из-за\n  него сюда попала\n  жёлтая душа.";
	dialogue[38] = "* Но была надежда, что\n  и без неё мне будет\n  место в проекте.";
	dialogue[39] = "* И оно было, пока\n  Yellow не вышла.";
	dialogue[40] = "* И мир не увидел\n  Старло и Серобу.";
	dialogue[41] = "* Церобу?\n* Черобу?";
	dialogue[42] = "* Неважно.";
	dialogue[43] = "* Всё равно там были\n  и лиса, и шериф.";
	dialogue[44] = "* Ключевые персонажи\n  истории.";
	dialogue[45] = "* Просто вау.";
	dialogue[46] = "* Так я впервые\n  оказалась здесь.";
	dialogue[47] = "* И знаешь, что было\n  самым худшим?";
	dialogue[48] = "* Потом меня выдернуло\n  обратно.";
	dialogue[49] = "* И так несколько раз.";
	dialogue[50] = "* Ох уж эти творческие\n  метания.";
	dialogue[51] = "* \"Не нужно повторяться!\n* Надо сделать что-то\n  полностью своё!\"";
	dialogue[52] = "* \"Неважно, что идеи\n  похожи. Главное - это\n  история!\"";
	dialogue[53] = "* Туда, сюда...\n* В итоге выбор сделан \n  не в мою пользу.";
	dialogue[54] = "* И вот я здесь.";
	dialogue[55] = "* Отвергнутая идея,\n  вместе со своими\n  лошадьми и мишенями.";
	dialogue[56] = "* Такая же как эти\n  спрайты, кнопки и души.";
	dialogue[57] = "* С характером только,\n  но кому это теперь\n  нужно...";
	dialogue[58] = "* Разве что тебе.";
	dialogue[59] = "* Спасибо, что слушаешь.\n* Я бы и про тебя...";

	dialogue[60] = "* Погоди-ка...";
	dialogue[61] = "* Это ведь ты!";
	dialogue[62] = "* Твоё изображение на\n  том кадре из интро.";
	dialogue[63] = "* В тебе голубая душа!\n* Это не менялось с тех\n  пор.";
	dialogue[64] = "* Ты же... Действующий\n  протагонист игры.";
	dialogue[65] = "* Зачем ты здесь?";
	dialogue[66] = "* Тебя не отвергли.\n* Ты всё ещё часть\n  истории.";
	dialogue[67] = "* Истории, из которой\n  меня выкинули.";
	dialogue[68] = "* Хочешь утвердиться\n  за мой счёт?";
	dialogue[69] = "* Ткнуть своей\n  пригодностью мне\n  в лицо?";
	dialogue[70] = "* Ха!";
	dialogue[71] = "* У нас так не принято,\n  малыш.";
	dialogue[72] = "* Я хоть и отвергнутый,\n  но всё ещё шериф.";
	dialogue[73] = "* А шерифа лучше\n  слушаться.";
	dialogue[74] = "* В соответствии с\n  законом номер один\n  Измерения отвергнутых";
	dialogue[75] = "* Вам запрещено\n  находиться на этой\n  территории.";
	dialogue[76] = "* А мне разрешено\n  отвести душу на том,\n  чего меня лишили.";

	dialogue[77] = "* Что, тебе оказалось\n  этого мало?";
	dialogue[78] = "* Давай проверим твоё\n  терпение на прочность.";

	dialogue[79] = "* Хах, славная вышла\n  битва.";
	dialogue[80] = "* Надеюсь, что ты...";
	dialogue[81] = "* А, что?";
	dialogue[82] = "* Позади меня?";
	dialogue[83] = "* Ты серьезно? Розыгрыши\n  такого уровня на меня\n  не действуют.";
	dialogue[84] = "* ...";
	dialogue[85] = "* ...";
	dialogue[86] = "* ...\n* ...";
	dialogue[87] = "* Ладно, что там?";
	dialogue[88] = "* Д-дверь?";
	dialogue[89] = "* Её...\n* Её никогда тут\n  не было...";
	dialogue[90] = "* Вряд ли дверь могла\n  стать отвергнутой,\n  не так ли?";
	dialogue[91] = "* Полагаю, что это выход.";
	dialogue[92] = "* Наш выход.";
	dialogue[93] = "* Нам нашли своё\n  применение и теперь мы\n  не отвергнуты.";
	dialogue[94] = "* Твоя миссия здесь\n  успешно завершена.";
	dialogue[95] = "* Благодаря тебе, я могу\n  наконец отправиться на\n  покой.";
	dialogue[96] = "* Спасибо, " + global.human_1_name + "!\n* Это было правда весело!";
	dialogue_end = 59;
}

dialogue_length = string_length(dialogue[dialogue_current]);



box_y = 350;

depth = obj_fence_hor.depth - 5;

