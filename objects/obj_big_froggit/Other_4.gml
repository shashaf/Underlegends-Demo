if global.language == "rus" {
	if (global.enough == 0) {
		dialogue[0] = "* Ква, ква.";
		dialogue[1] = "* Привет, путешественник.";
		dialogue[2] = "* Я Большой Фроггит.";
		dialogue[3] = "* Видишь ли, я должен `n  был быть специальным`n  боссом.";
		dialogue[4] = "* Ну знаешь, много ходов`n  и катсцена в случае`n  твоей победы."
		dialogue[5] = "* Но тот, кто создал меня,`n  сделал другого босса."
		//dialogue[6] = "* И у него не хватило`n  времени сделать боссом меня.";
		dialogue[6] = "* Так что я всё ещё`n  просто секретный NPC.";
	
		dialogue[7] = "* Ква, ква."; 
		dialogue[8] = "* Я слышал, есть способ`n  увидеть эту битву прямо`n  в этом прототипе."; 
		//dialogue_end = array_length_1d(dialogue)- 1 ;
		dialogue_end = 6;
		dialogue_talked = 7;
		dialogue_talked_twice = 7;
		dialogue_talked_end = 8;
		dialogue_talked_twice_end = dialogue_talked_end;
	}
	else {
		dialogue[0] = "* Ква, ква.";
		dialogue[1] = "* Должен сказать, теперь я`n  почему-то рад, что не`n  стал боссом.";
		dialogue[2] = "* Не знаю, что случилось`n  в другой комнате...";
		dialogue[3] = "* Но там очень тихо. ";
		dialogue[4] = "* Я волнуюсь.";
	
		dialogue_current = 0;
		dialogue_start = 0;
		dialogue_end = 4;
		dialogue_talked = 2;
		dialogue_talked_twice = 2;
		dialogue_talked_end = 4;
		dialogue_talked_twice_end = dialogue_talked_end;
	}
}
else {
	if (global.enough != 1) {
		dialogue[0] = "* Ribbit, ribbit.";
		dialogue[1] = "* Hello, traveler.";
		dialogue[2] = "* I am Big Froggit.";
		dialogue[3] = "* You see, I was supposed`n  to be the special boss.";
		dialogue[4] = "* You know, with a lot of`n  turns and a cutscene if`n  you win."
		dialogue[5] = "* But the one who created`n  me made a boss battle`n  for the game jam."
		dialogue[6] = "* Therefore, he didn't have`n  enough time to make`n  me the boss.";
		dialogue[7] = "* So I'm still just a secret`n  NPC.";
	
		dialogue[8] = "* Ribbit, ribbit."; 
		dialogue[9] = "* I've heard there is a way to`n  see this battle in this`n  prototype."
		//dialogue_end = array_length_1d(dialogue)- 1 ;
		dialogue_end = 7;
		dialogue_talked = 8;
		dialogue_talked_twice = 8;
		dialogue_talked_end = 9;
		dialogue_talked_twice_end = dialogue_talked_end;
	}
	else {
		dialogue[0] = "* Ribbit, ribbit.";
		dialogue[1] = "* I have to say, now I'm`n  somehow glad I'm not`n  the boss.";
		dialogue[2] = "* I don't know what happened`n  in the other room...";
		dialogue[3] = "* But it's very quiet there. ";
		dialogue[4] = "* I'm worried.";
	
		dialogue_current = 0;
		dialogue_start = 0;
		dialogue_end = 4;
		dialogue_talked = 2;
		dialogue_talked_twice = 2;
		dialogue_talked_end = 4;
		dialogue_talked_twice_end = dialogue_talked_end;
	}
}

if (global.froggit_talked != 0) {
	dialogue_current = dialogue_talked;
	dialogue_end = dialogue_talked_end;
}

dialogue_length = string_length(dialogue[dialogue_current]);