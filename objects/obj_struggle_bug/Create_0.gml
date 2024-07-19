/// @description Insert description here
// You can write your code in this editor
box_y = box_y_check();
dialogue[0] = "* Ring...";
text_height = 28;
text_x = 80;
text_x_with_avatar = 80; 
if global.language == "rus" {
	dialogue[0] = "* Звонок...";
}
if room == rm_reject2 {
	dialogue_font = fnt_dialogue_rus;
	if instance_exists(obj_lemike_cutscene3) {
		text_x_with_avatar = 170;
		box_sprite = spr_dialogue_box3_yellow;
		dialogue_sprite = spr_lemike_dialogue_serious;
		dialogue_voice = snd_lemike_voice;
		
		dialogue[0] = "* Um...";
		dialogue[1] = "* Sorry if it is none`n  of my business but...";
		dialogue[2] = "* WHAT THE HECK ARE`n  YOU DOING THERE???";
		dialogue[3] = "* Oh, you're stuck.";
		dialogue[4] = "* Don't worry, I'll`n  fix that!";
		dialogue[5] = "* It will be a little...`n  ...nervous.";
		dialogue[6] = "* Better close your eyes.";
		if global.language == "rus" {
			dialogue[0] = "* Эм...";
			dialogue[1] = "* Извини, если это не`n  моё дело, но...";
			dialogue[2] = "* ЧТО ТЫ ТАМ ДЕЛАЕШЬ???";
			dialogue[3] = "* Ох, ты не можешь`n  выбраться.";
			dialogue[4] = "* Не беспокойся, я`n  сейчас всё сделаю!";
			dialogue[5] = "* Будет немного...`n ...нервно.";
			dialogue[6] = "* Лучше закрой глаза.";
		}
		dialogue_end = 6;
		instance_create_depth(global.camera_x + 90, global.camera_y + box_y + 25, 0, obj_dialogue_avatar);
		obj_dialogue_avatar.sprite_index = dialogue_sprite;
	}
	else {
		box_sprite = spr_dialogue_box2_yellow;
		text_x = 80;
		dialogue_voice = snd_text2;
		if obj_patience.struggle_limit == 2000 {
			dialogue_font = fnt_bookman;
			dialogue[1] = "* Хах, ну и где же`n  Ваша любовь к нажиманию`n  на клавиши.";
			dialogue[2] = "* Неужели не захотелось`n  понажимать на все подряд?";
			dialogue[3] = "* В таком случае под руку`n  довольно быстро попалась`n  бы F1.";
			dialogue[4] = "* Ведь именно её нажимают,`n  когда нужна помощь,`n  не так ли?";
			dialogue_end = 4;
		} 
	}
}
else {
	audio_play_sound(snd_phone, 0, 0);
	text_x_with_avatar = 170;
	box_sprite = spr_dialogue_box3;
	dialogue_sprite = spr_papyrus_dialogue_cool;
	dialogue_voice = snd_papyrus_voice;
	dialogue_font = fnt_papyrus_phone_rus;
	//text_height = 36;
	dialogue[1] = "* Human!";
	dialogue[2] = "* I'm giving you a call to ask`n  you....";
	dialogue[3] = "* How about we hang out`n  together sometime?";
	dialogue[4] = "* Oh,  are you already`n  hanging out?";
	dialogue[5] = "* And you...  don't like it?";
	dialogue[6] = "* Wowie!";
	dialogue[7] = "* Of course, because I'm`n  not with you!";
	dialogue[8] = "* What?";
	dialogue[9] = "*It is because you can't move?";
	dialogue[10] = "* Oh,  I know about it!";
	dialogue[11] = "* Sans told me that this`n  happened to him.";
	dialogue[12] = "* When he...  um...";
	dialogue[13] = "* `yPressed keys, `wwhile`n  moving between rooms?";
	dialogue[14] = "* I don't know why he needs`n  keys in the doorway, but...";
	dialogue[15] = "* He decided `yit was better`n  not to do that.";
	dialogue[16] = "* `wSorry, I can't get you out`n  of there right now.";
	dialogue[17] = "* But I know that if you close `n  your eyes and dream...";
	dialogue[18] = "* Almost anything can come`n  true!!";
	if global.language == "rus" {
		dialogue[1] = "* Человек!";
		dialogue[2] = "* Я звоню тебе,`n  чтобы спросить...";
		dialogue[3] = "* Как на счет того,`n  чтобы позависать вдвоем`n  как-нибудь?";
		dialogue[4] = "* А,  ты уже зависаешь?";
		dialogue[5] = "* И тебе...  не нравится?";
		dialogue[6] = "* Ваушки!";
		dialogue[7] = "* Конечно,  ведь рядом`n  нет меня!";
		dialogue[8] = "* Что?";
		dialogue[9] = "* Это из-за того,  что`n  ты застрял?";
		dialogue[10] = "* Ох,  я знаю об этом!";
		dialogue[11] = "* Санс рассказывал мне,`n  что с ним бывало такое.";
		dialogue[12] = "* Когда он...  эээ...";
		dialogue[13] = "* `yНажимал на кнопки,`n  `wпока перемещался из`n  одной комнаты в другую?";
		dialogue[14] = "* Не знаю, зачем ему кнопки`n  в дверном проеме,  но...";
		dialogue[15] = "* Он решил,  что `yлучше`n  так не делать.";
		dialogue[16] = "* `wПрости,  но я не`n  смогу достать тебя`n  прямо сейчас.";
		dialogue[17] = "* Но я знаю,  что`n  если закрыть глаза`n  и помечтать...";
		dialogue[18] = "* Может сбыться почти`n  что угодно!";
	}
	dialogue_end = 18;
	if global.enough == 0 { 
		instance_create_depth(global.camera_x + 90, global.camera_y + box_y + 25, 0, obj_dialogue_avatar);
		obj_dialogue_avatar.sprite_index = dialogue_sprite;
	}
}
if global.enough != 0 {
	box_sprite = spr_dialogue_box2;
	if room == rm_reject2 {
		box_sprite = spr_dialogue_box2_yellow;	
	}
	text_x_with_avatar = 80;
	dialogue_voice = snd_phone_guy_voice;
	//dialogue_font = fnt_dialogue_rus;
	dialogue_font = fnt_bookman;
	dialogue[1] = "* You're stuck in a corner.";
	dialogue[2] = "* It is said that this happens to`n  the most `rimpatient `wpeople.";
	dialogue[3] = "* With those who cannot finish`n  the battle calmly.";
	dialogue[4] = "* And always press the keys at the`n  slightest hitch.";
	dialogue[5] = "* And now no one can even help you.";
	dialogue[6] = "* But it was `ryour choice, `wwasn't it?";
	dialogue[7] = "* It seems that the only thing`n  left to do is to sever the`n  connection with this place.";
	if global.language == "rus" {
		dialogue[1] = "* Вы застряли в углу.";
		dialogue[2] = "* Говорят, что это происходит с`n  самыми `rнетерпеливыми `wлюдьми.";
		dialogue[3] = "* С теми, кто не может`n  завершить битву спокойно.";
		dialogue[4] = "* И вечно жмёт на клавиши`n  при малейшей заминке.";
		dialogue[5] = "* И сейчас Вам даже никто`n  не может помочь.";
		dialogue[6] = "* Но это ведь был `rВаш выбор,`n  `wне так ли?";
		dialogue[7] = "* Кажется, остаётся только`n  разорвать связь с этим`n  местом.";
	}
	dialogue_end = 7;
}
if obj_patience.struggle_limit == 2000 {
	box_sprite = spr_dialogue_box2;
	if room == rm_reject2 {
		box_sprite = spr_dialogue_box2_yellow;	
	}
	dialogue_font = fnt_bookman;
	dialogue_voice = snd_phone_guy_voice;
	if global.language == "rus" {
		dialogue[1] = "* Хах, ну и где же Ваша любовь`n  к нажиманию на клавиши?";
		dialogue[2] = "* Неужели не захотелось`n  понажимать на все подряд?";
		dialogue[3] = "* В таком случае под руку`n  довольно быстро попалась бы F1.";
		dialogue[4] = "* Ведь именно её нажимают,`n  когда нужна помощь, не так ли?";
	}
	else {
		dialogue[1] = "* Hah, well, where is your love for`n  pressing keys?";
		dialogue[2] = "* Didn't you really want to press`n  everything on your keyboard?";
		dialogue[3] = "* In this case, F1 would come to`n  hand pretty quickly.";
		dialogue[4] = "* After all, that's what people press`n   when they need help, right?";
	}
	dialogue_end = 4;
} 
in_dialogue = true;
obj_patience.can_move = false;
dialogue_start = 0;
dialogue_current = dialogue_start; //индекс текущей фразы всего диалога
dialogue_draw = ""; //строка для отрисовки фразы, изначально пустая
default_increase = 1; //скорость появления символов на экране
increase = default_increase;
characters = 0; //кол-во символов строки для отрисовки
//buffer = "";
symbols = 1;
width = 0
row = 0;


next_m = false; //флаг для перехода на новую реплику
text = 0; //флаг для проверки выводится ли буква на экран
pause = false; //флаг для проверки паузы
dialogue_length = string_length(dialogue[dialogue_current]);
//need_buffer = true; //флаг для проверки нужна ли копия в буфер






