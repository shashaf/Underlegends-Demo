/// @description Insert description here
// You can write your code in this editor

//if (global.player_lv < 4) {
if global.language == "rus" {
	if (global.enough != 1) {
		dialogue[0] = "* Приветик!`n* Я `yЦВЕТИК`w.`n* `yЦВЕТОК `wпо имени `yЦВЕТИК!";
		dialogue[1] = "* Хм...";
		dialogue[2] = "* Ты новенький в`n  ПОДЗЕМЕЛЬЕ,`n  не так ли?";
		dialogue[3] = "* Я тестовый NPC.`n* Я здесь для теста`n  диалогов.";

		dialogue[4] = "* О, снова привет!"
		dialogue[5] = "* Я буду говорить это`n  каждый раз, когда ты`n  заговоришь со мной."
		dialogue[6] = "* Ты можешь читать`n  сообщения очень быстро,`n  удерживая кнопку C.";
		dialogue[7] = "* Поговори со мной ещё`n  раз, чтобы проверить`n  это.";
		dialogue[8] = "* Только если...`n* Если читаешь это `n  сейчас в первый раз."; 
		//dialogue_end = array_length_1d(dialogue)- 1 ;
		dialogue_end = 3;
		dialogue_talked = 4;
		dialogue_talked_twice = 4;
		dialogue_talked_end = 8;
		dialogue_talked_twice_end = dialogue_talked_end;
	}
	else {
		dialogue[0] = "* Значит ты можешь`n  зайти так далеко...";
		dialogue[1] = "* Вау, ты действительно`n  из тех людей, которые`n  хотят увидеть ВСЁ.";
		dialogue[2] = "* Все они были `rубиты`n  тобой `wдаже в`n  прототипе.";
		dialogue[3] = "* Здесь даже нет битвы`n  с боссом. Нет нужды`n  становиться сильнее.";
		dialogue[4] = "* Тебе просто хотелось`n  узнать, что произойдёт.";
		dialogue[5] = "* Ты думаешь, это`n  хорошее оправдание`n  для `rубийства?";
	
		dialogue[6] = "* Хотя, возможно...`n* Возможно, я ошибаюсь.";
		dialogue[7] = "* И ты просто изменил`n  необходимый файл.";
		dialogue[8] = "* Но, честно говоря,`n  я даже не знаю,`n  что хуже.";
		dialogue[9] = "* Быть безжалостным`n  убийцей или играть в`n  бога в двух комнатах.";
		//dialogue[10] = "* At least you can't kill`n  me, so you're neither`n  one nor the other.";
		dialogue[10] = "* По крайней мере, ты не`n  можешь убить меня.";
		dialogue[11] = "* Так что я`n  сомневаюсь на счёт`n  игры в бога.";
		dialogue[12] = "* Скажи мне, " + global.human_1_name + ".";
		dialogue[13] = "* Тебе что, заняться`n  нечем?";
		dialogue_current = 0;
		dialogue_start = 0;
		dialogue_end = 5;
		dialogue_talked = 6;
		dialogue_talked_twice = 12;
		dialogue_talked_end = 13;
		dialogue_talked_twice_end = dialogue_talked_end;
	}
	if global.letter == "z" {
		dialogue[0] = "* Приветик!`n* Я ЦВЕТИК.`n* ЦВЕТОК по имени ЦВЕТИК!";
		dialogue[1] = "* Ну так...";
		dialogue[2] = "* Ты собираешься`n  `rубить `wих всех снова,`n  не так ли?";
		dialogue[3] = "* Что?";
		dialogue[4] = "* По-твоему, я не должен`n  знать об этом?";
		dialogue[5] = "* Хи хи хи.";
		dialogue[6] = "* КОНЕЧНО Я ЗНАЮ.";
		dialogue[7] = "* Я видел это`n  собственными глазами.";
		//dialogue[8] = "* It's quite easy to pretend that`n  I don't remember your`n  simple walk back and forth.";
		dialogue[8] = "* Я могу притворяться,`n  что не помню, как ты`n  бродишь туда-сюда.";
		dialogue[9] = "* Но `rТАКОЕ `wневозможно`n  забыть.";
		dialogue[10] = "* Знаешь, это`n  действительно`n  впечатлило меня.";
		dialogue[11] = "* Я даже признался тебе,`n  что помню твои прошлые`n  попытки.";
		dialogue[12] = "* Особенно `rпоследнюю.";	
		dialogue_current = 0;
		dialogue_start = 0;
		dialogue_end = 12;

		dialogue[13] = "* Так зачем ты снова`n  здесь?";
		dialogue[14] = "* Только не говори, что`n  тебе стыдно за`n  содеянное.";
		dialogue[15] = "* Это всё равно нельзя`n  исправить.";
		dialogue[16] = "* Ты отнял жизни других,`n  просто чтобы узнать,`n  что произойдёт."
		dialogue[17] = "* И теперь ты всё ещё`n  здесь.`n* Но почему?"
		dialogue[18] = "* Знаешь...";
		dialogue[19] = "* Я даже ценю то, что`n  после всего этого, ты`n  снова приходишь ко мне.";
		dialogue[20] = "* Так что, раз ты уже`n  знаешь, что я всё`n  помню...";
		dialogue[21] = "* Иди к выходу в`n  следующей комнате.";
		dialogue[22] = "* Мне есть, что сказать`n  тебе.";
		dialogue_talked = 13;
		dialogue_talked_end = 22;
	
	
		dialogue_talked_twice = 21;
		dialogue_talked_twice_end = dialogue_talked_end;
	}
}
else {
	if (global.enough != 1) {
		dialogue[0] = "* Howdy!`n* I'm `yFLOWEY`w.`n* `yFLOWEY `wthe `yFLOWER`w!";
		dialogue[1] = "* Hm...";
		dialogue[2] = "* You're new to the`n  UNDERGROUND,`n  aren'tcha?";
		dialogue[3] = "* I am the test NPC.`n* I'm here for dialogue`n  tests.";

		dialogue[4] = "* Oh, hello once again!"
		dialogue[5] = "* I'll be saying it`n  every time you start`n  talking to me."
		dialogue[6] = "* You can read messages`n  extremely fast`n  by holding C.";
		dialogue[7] = "* Talk to me again to`n  check this.";
		dialogue[8] = "* Only if this...`n* If this is your first`n  time reading this."; 
		//dialogue_end = array_length_1d(dialogue)- 1 ;
		dialogue_end = 3;
		dialogue_talked = 4;
		dialogue_talked_twice = 4;
		dialogue_talked_end = 8;
		dialogue_talked_twice_end = dialogue_talked_end;
	}
	else {
		dialogue[0] = "* So you went this far...";
		//dialogue[1] = "* Wow, you really are one`n  of those people who`n  wants to see EVERYTHING.";
		dialogue[1] = "* Wow, you really are`n  one of those people`n  who checks EVERYTHING.";
		dialogue[2] = "* You `rkilled `wthem all`n  even in the prototype.";
		dialogue[3] = "* There isn't even a`n  boss fight. You didn't`n  need to get stronger.";
		dialogue[4] = "* You just wanted to`n  know what would happen.";
		dialogue[5] = "* Do you think this is`n  a good excuse for`n  `rmurder?";
	
		dialogue[6] = "* Although, maybe...`n* Maybe I'm wrong.";
		dialogue[7] = "* And you just edited`n  the required file.";
		dialogue[8] = "* But, to be honest,`n  I don't even know`n  what's worse.";
		dialogue[9] = "* Be a ruthless murderer`n  or play god with just`n  two rooms.";
		//dialogue[10] = "* At least you can't kill`n  me, so you're neither`n  one nor the other.";
		dialogue[10] = "* At least you can't`n  kill me.";
		dialogue[11] = "* So you're not that`n  much of a god.";
		dialogue[12] = "* Tell me, " + global.human_1_name + ".";
		dialogue[13] = "* Don't you have`n  anything better to do?";
		dialogue_current = 0;
		dialogue_start = 0;
		dialogue_end = 5;
		dialogue_talked = 6;
		dialogue_talked_twice = 12;
		dialogue_talked_end = 13;
		dialogue_talked_twice_end = dialogue_talked_end;
	}
	if global.letter == "z" {
		dialogue[0] = "* Howdy!`n* I'm FLOWEY`w.`n* FLOWEY the FLOWER!";
		dialogue[1] = "* So...";
		dialogue[2] = "* You're going to`n  `rkill `wthem all again,`n  aren'tcha?";
		dialogue[3] = "* What?";
		dialogue[4] = "* You thought I`n  shouldn't know about`n  this?";
		dialogue[5] = "* Hee hee hee.";
		dialogue[6] = "* OF COURSE I KNOW.";
		dialogue[7] = "* I saw it with my own`n  eyes.";
		//dialogue[8] = "* It's quite easy to pretend that`n  I don't remember your`n  simple walk back and forth.";
		//dialogue[8] = "* I can easily pretend that`n  I don't remember you`n  hanging around here.";
		dialogue[8] = "* I can easily pretend`n  that I don't remember`n  some things.";
		dialogue[9] = "* For example, your`n  wandering back`n  and forth.";
		dialogue[10] = "* But `rTHIS `wcannot be`n  forgotten.";
		dialogue[11] = "* You know, you really`n  impressed me.";
		dialogue[12] = "* I even confessed to`n  you that I remember`n  your previous runs.";
		dialogue[13] = "* Especially `rthe last`n  one.";	
		dialogue_current = 0;
		dialogue_start = 0;
		dialogue_end = 13;

		dialogue[14] = "* So why did you come`n  back?";
		dialogue[15] = "* Don't tell me you're`n  ashamed of what you`n  did.";
		dialogue[16] = "* This still can't be`n  fixed.";
		dialogue[17] = "* You took the lives of`n  monsters just to find`n  out what would happen."
		dialogue[18] = "* And now you're still`n  here.`n* But why?"
		dialogue[19] = "* You know...";
		dialogue[20] = "* I even appreciate that`n  after doing this, you`n  still come to me.";
		dialogue[21] = "* So since you already`n  know that I remember`n  everything...";
		dialogue[22] = "* Go to the game exit`n  in the next room.";
		dialogue[23] = "* I have something`n  to tell you.";
		dialogue_talked = 14;
		dialogue_talked_end = 23;
	
	
		dialogue_talked_twice = 22;
		dialogue_talked_twice_end = dialogue_talked_end;
	}
}

if (global.flowey_talked != 0) {
	dialogue_start = dialogue_talked_twice;
	dialogue_current = dialogue_talked_twice;
	dialogue_end = dialogue_talked_twice_end;
}


