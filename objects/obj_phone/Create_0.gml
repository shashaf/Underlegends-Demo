
// Inherit the parent event
event_inherited();

dialogue_voice = snd_spamton_voice;
broken = false;
if current_year == 2023 {
	if current_month == 10 {
		dialogue[0] = "* H-H-HEY     HEY!!";
		dialogue[1] = "* YOU   ARE      OUR\n  [ONE MILLIONTH CUSTOMER!]!";
		dialogue[2] = "* THAT'S WHY YOU   WILL GET\n  [a specil offer]";
		dialogue[3] = "* ONLY  FOR YOU\n* ONLY FOR [GREAT LUCKY GUY]";
		dialogue[4] = "* NOW'S YOUR  CHANCE TO\n  [GET YOUR PRIZE NOW]";
		dialogue[5] = "* THIS IS AN EXCLUSIVE PREMIERE!";
		dialogue[6] = "* OF THE    ABSOLUTE\n  [NUMBER 1 ON JIMBOARD HOT 100]";
		dialogue[7] = "* GET READY!!!";
		dialogue[8] = "";

		//dialogue_end = array_length_1d(dialogue)- 1 ;
		dialogue_end = 8;
	}
	else {
		dialogue[0] = "* H-H-HEY     HEY!!";
		dialogue[1] = "* YOU   ARE      OUR\n  REGULAR CUSTOMER!";
		dialogue[2] = "* THAT'S WHY YOU   WILL GET\n  [NOTHING SPECIL]";
		dialogue[3] = "* ORIGINALLY, THIS SHOULD\n  HAVE BEEN AN\n  EXCLUSIVE   PREMIERE.";
		dialogue[4] = "* BUT THE REGULAR PREMIERE\n  ALREADY TOOK PLACE ON\n  [SPOOKY NIGHT OF OCTOBER 31]";
		dialogue[5] = "* SO    YOU'RE   LATE!!!";
		dialogue[6] = "* BUT!  YOU   CAN";
		dialogue[7] = "* GO ON [youtube.com] AND\n  LISTEN to\n [THE GREATEST HIT OF ALL TIME]";
		dialogue[8] = "* AND DON'T FORGET    TO\n    [LIKE AND SUBSCRIBE]";
		dialogue[9] = "* ON THE YOUTUBE CHANNEL\n   [SHASHA F]";
		dialogue[10] = "* HE HEE HEEE HEHE.";
		dialogue[11] = "";
		dialogue_end = 11;
	}
}
else {
	if global.language == "rus" {
		dialogue[0] = "* Х-Х-ХЭЙ     ХЭЙ!!";
		dialogue[1] = "* ТЫ         НАШ\n  ОБЫЧНЫЙ ПОСЕТИТЕЛЬ!";
		dialogue[2] = "* ПОЭТОМУ ТЫ   ПОЛУЧИШЬ\n  [НИЧЕГО особенного].";
		dialogue[3] = "* ИЗНАЧАЛЬНО, ЭТО ДОЛЖНО\n      БЫЛО БЫТЬ\n  ЭКСКЛЮЗИВНОЙ ПРЕМЬЕРОЙ.";
		dialogue[4] = "* НО ОБЫЧНАЯ ПРЕМЬЕРА УЖЕ\n  ПРОШЛА В\n  [ЖУТКУЮ НОЧЬ 31 ОКТЯБРЯ]";
		dialogue[5] = "* ТАК ЧТО\n     УЖЕ\n       ПОЗДНО!!!";
		dialogue[6] = "* НО!  ТЫ   МОЖЕШЬ";
		dialogue[7] = "* ЗАЙТИ НА [youtube.com]\n    И ПОСЛУШАТЬ ТАМ\n[ВЕЛИЧАЙШИЙ ХИТ В ИСТОРИИ]!!";
		dialogue[8] = "* И НЕ ЗАБУДЬ\n  [ПОСТАВИТЬ ЛАЙК]\n  и [ПОДПИСАТЬСЯ НА КАНАЛ]!";
		dialogue[9] = "* НА ЮТУБ КАНАЛ\n     [SHASHA F]";
		dialogue[10] = "* ХЕ ХЕЕ ХЕЕЕ ХЕХЕ";
	}
	else {
		dialogue[0] = "* H-H-HEY     HEY!!";
		dialogue[1] = "* YOU   ARE      OUR\n  REGULAR CUSTOMER!";
		dialogue[2] = "* THAT'S WHY YOU   WILL GET\n  [NOTHING SPECIL]";
		dialogue[3] = "* ORIGINALLY, THIS SHOULD\n  HAVE BEEN AN\n  EXCLUSIVE   PREMIERE.";
		dialogue[4] = "* BUT THE REGULAR PREMIERE\n  ALREADY TOOK PLACE ON\n  [SPOOKY NIGHT OF OCTOBER 31]";
		dialogue[5] = "* SO    YOU'RE   LATE!!!";
		dialogue[6] = "* BUT!  YOU   CAN";
		dialogue[7] = "* GO ON [youtube.com] AND\n  LISTEN to\n [THE GREATEST HIT OF ALL TIME]";
		dialogue[8] = "* AND DON'T FORGET    TO\n    [LIKE AND SUBSCRIBE]";
		dialogue[9] = "* ON THE YOUTUBE CHANNEL\n   [SHASHA F]";
		dialogue[10] = "* HE HEE HEEE HEHE.";
	}
	dialogue[11] = "";
	dialogue_end = 11;
}
dialogue_length = string_length(dialogue[dialogue_current]);
