/// @description Insert description here
// You can write your code in this editor
if global.language == "rus" {
	if (global.enough != 1) {
		dialogue[0] = "* Тра ла ла.`n* Я лодочник.`n* Или лодочница?";
		dialogue[1] = "* На самом деле, это`n  неважно.";
		dialogue[2] = "* Да, я знаю, обычно`n  здесь `yмаленький`n  цветочек.";
		dialogue[3] = "* Но в этот раз я решил`n \"подменить\" его.";

		dialogue[4] = "* Хмм, я подумал, а что`n  если ты никогда не`n  видел здесь цветка...";
		dialogue[5] = "* Мои слова, наверное,`n  звучали очень неловко.";
		dialogue[6] = "* Но в таком случае,`n  можешь порадоваться`n  своей удаче.";
		dialogue[7] = "* Вероятность, что такое`n  произойдёт, крайне`n  мала.";
		dialogue[8] = "* Но это идеально`n  отражает всю красоту`n  хаоса.";
		
		day_of_week = get_string_day_of_week(current_weekday);
		//day_of_week = get_string_day_of_week(1);
		dialogue[9] = "* Тра ла ла.`n* Где-то сейчас`n  " + day_of_week + ".";
		dialogue_end = 3;
		dialogue_talked = 4;
		dialogue_talked_twice = 9;
		dialogue_talked_end = 8;
		dialogue_talked_twice_end = 9;
	
		if (global.stranger_talked != 0) {
			dialogue_start = dialogue_talked;
			dialogue_current = dialogue_talked;
			dialogue_end = dialogue_talked_end;
		}
	}
	else {
		dialogue[0] = "* Значит ты можешь`n  зайти настолько`n  далеко...";
		dialogue[1] = "* Интересно, ты первый`n  раз делаешь `rэто?";
		dialogue[2] = "* `wИли ты знаешь намного`n  больше о том, что`n  здесь происходит?";
		dialogue[3] = "* Возможно, ты просто`n  хочешь узнать, что`n  скажу тебе `yименно я.";
		dialogue[4] = "* `wЧто ж, ты просто зря`n  тратишь своё время.";
		dialogue[5] = "* Ничего не будет.";
	
		dialogue[6] = "";
		dialogue_end = 6;
		dialogue_talked = 4;
		dialogue_talked_twice = 4;
		dialogue_talked_end = 5;
		dialogue_talked_twice_end = dialogue_talked_end;
		dialogue_current = 0;
	}
	if global.letter == "z" {
		dialogue[0] = "* Тра ла ла.`n* Я лодочник.`n* Или лодочница?";
		dialogue[1] = "* На самом деле, это`n  неважно.";
		dialogue[2] = "* Как неважно и то,`n  знаешь ты меня или нет.";
		dialogue[3] = "* И неважно то, что `n  `rя знаю, что произошло.";
		dialogue[4] = "* В любом случае, ты`n  просто тратишь время`n  впустую.";
		dialogue[5] = "* Мне открылось всё,`n  что мне хотелось`n  узнать.";
	
		dialogue[6] = "";
		dialogue_end = 6;
		dialogue_talked = 4;
		dialogue_talked_twice = 4;
		dialogue_talked_end = 5;
		dialogue_talked_twice_end = dialogue_talked_end;
		dialogue_current = 0;
	}
}
else {
	if (global.enough != 1) {
		dialogue[0] = "* Tra la la.`n* I'm the riverman.`n* Or am I the riverwoman?";
		dialogue[1] = "* It doesn't really`n  matter.";
		dialogue[2] = "* Yeah, I know, there is`n  usually `ya tiny flower`n  `where.";
		dialogue[3] = "* But this time I`n  decided to replace`n  him.";

		dialogue[4] = "* Hmm, I was wondering,`n  what if you've never`n  seen a flower here...";
		dialogue[5] = "* My words probably`n  sounded very awkward.";
		dialogue[6] = "* But you can enjoy your`n  luck in this case.";
		dialogue[7] = "* The likelihood of this`n  happening is extremely`n  low.";
		dialogue[8] = "* But it perfectly shows`n  the beauty of chaos.";
		day_of_week = get_string_day_of_week(current_weekday);
		dialogue[9] = "* Tra la la.`n* It's " + day_of_week + "`n  somewhere.";
		
		//dialogue_end = array_length_1d(dialogue)- 1 ;
		dialogue_end = 3;
		dialogue_talked = 4;
		dialogue_talked_twice = 9;
		dialogue_talked_end = 8;
		dialogue_talked_twice_end = 9;
	
		if (global.stranger_talked != 0) {
			dialogue_start = dialogue_talked;
			dialogue_current = dialogue_talked;
			dialogue_end = dialogue_talked_end;
		}
	}
	else {
		dialogue[0] = "* So you went this far...";
		dialogue[1] = "* I wonder if this was`n  your first time doing`n  `rthis?";
		dialogue[2] = "* `wOr do you know a lot`n  more about what's`n  going on here?";
		dialogue[3] = "* Perhaps you just`n  wanted to know what `yI`n  `wwould say to you.";
		dialogue[4] = "* Well, you just wasted`n  your time.";
		dialogue[5] = "* Here goes nothing.";
	
		dialogue[6] = "";
		dialogue_end = 6;
		dialogue_talked = 4;
		dialogue_talked_twice = 4;
		dialogue_talked_end = 5;
		dialogue_talked_twice_end = dialogue_talked_end;
		dialogue_current = 0;
	}
	if global.letter == "z" {
		dialogue[0] = "* Tra la la.`n* I'm the riverman.`n* Or am I the riverwoman?";
		dialogue[1] = "* It doesn't really`n  matter.";
		dialogue[2] = "* It also doesn't matter`n  whether you know me`n  or not.";
		dialogue[3] = "* And it doesn't matter`n  that `rI know what you`n  did.";
		dialogue[4] = "* Either way, you're`n  just wasting your time.";
		dialogue[5] = "* I saw everything`n  I wanted.";
	
		dialogue[6] = "";
		dialogue_end = 6;
		dialogue_talked = 4;
		dialogue_talked_twice = 4;
		dialogue_talked_end = 5;
		dialogue_talked_twice_end = dialogue_talked_end;
		dialogue_current = 0;
	}
}
dialogue_length = string_length(dialogue[dialogue_current]);


