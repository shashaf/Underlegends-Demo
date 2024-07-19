

//start_text = "If the enemy's name is `yyellow`w, `nyou can `yspare `wthem using Mercy";
start_text = "text";
text = "";
text_length = string_length(start_text);
text_height = 20*2;
symbols = 1;
characters = 0;
increase = 1;
letter = 0;
need_to_pronounce = 1;
width = 0
row = 0;
showed = false;
//obj_battleManager.enemies[0].image_speed = 1;
//obj_battleManager.enemies[0].image_speed = 1;
speaker = noone;
voice = snd_text2;

sprite_index = spr_bubble_horizontal_long;
image_xscale = 2;
image_yscale = 2;
dialogue_start = 69;
dialogue_end = 75;
dialogue_current = dialogue_start;

dialogue_text[0] = "ИТАК, НАЧНЕМ`nТРЕНИРОВКУ!";
dialogue_text[1] = "НАС УЧИЛИ ТОМУ, ЧТО`nСПЕРВА ВСЕГДА НУЖНО`nОЦЕНИТЬ ПРОТИВНИКА.";
dialogue_text[2] = "ВЫЯВИТЬ ЕГО СИЛЬНЫЕ`nИ СЛАБЫЕ СТОРОНЫ.";


dialogue_text[3] = "НЬЕ-ХЕ-ХЕ!";
dialogue_text[4] = "Я УЖЕ ВИЖУ ТВОЮ`nСЛАБОСТЬ!";
dialogue_text[5] = "У ТЕБЯ НЕТ СВОЕЙ`nФИРМЕННОЙ ФРАЗЫ!";
dialogue_text[6] = "БЕЗ НЕЕ ТЫ НЕ СТАНЕШЬ`nВСЕМИРНО ИЗВЕСТНЫМ`nОХОТНИКОМ НА ЛЮДЕЙ!";
dialogue_text[7] = "НЬЕ-ХЕ-ХЕ, К СЧАСЬТЬЮ`nЯ ГОТОВ К ЭТОМУ`nЗАРАНЕЕ!";

dialogue_text[8] = "ЧТО Ж, ЧТО ТАМ ДАЛЬШЕ.";
dialogue_text[9] = "Я СЛЫШАЛ, ЧТО КОРОЛЬ`nВСЕГДА ГОВОРИЛ`nСВОЕЙ СТРАЖЕ...";
dialogue_text[10] = "\"САМАЯ ЛУЧШАЯ БИТВА`nТА, КОТОРОЙ УДАЛОСЬ`nИЗБЕЖАТЬ.\"";
dialogue_text[11] = "\"ПОДУМАЙТЕ, ЧТО МОЖНО`n`yСДЕЛАТЬ`b, ЧТОБЫ`nЗАВЕРШИТЬ БОЙ МИРНО\".";
dialogue_text[12] = "Я НЕ ПОНИМАЮ,`nО ЧЕМ ОН!!";
dialogue_text[13] = "КАК МОЖНО ПОЙМАТЬ`nЧЕЛОВЕКА БЕЗ СРАЖЕНИЯ?";

dialogue_text[14] = "ООО, ТЕПЕРЬ Я ВИЖУ!";
dialogue_text[15] = "ЕСЛИ БЫ ЭТО БЫЛ БОЙ`nС ЧЕЛОВЕКОМ, Я БЫ НЕ`nЗАХОТЕЛ АТАКОВАТЬ`nПОСЛЕ ТАКОГО.";
dialogue_text[16] = "ЗНАЧИТ, ЕСЛИ Я СКАЖУ`nЕМУ ЧТО-ТО ПРИЯТНОЕ,`nМЫ НЕ БУДЕМ ДРАТЬСЯ.";
dialogue_text[17] = "ВМЕСТО ЭТОГО ОН СРАЗУ`nДАСТ ПОЙМАТЬ СЕБЯ!";
dialogue_text[18] = "ЭТО ПРАВДА УМНО!";

dialogue_text[19] = "ООО, ТЕПЕРЬ Я ВИЖУ!";
dialogue_text[20] = "ЕСЛИ БЫ ЭТО БЫЛ БОЙ`nС ЧЕЛОВЕКОМ, Я БЫ НЕ`nЗАХОТЕЛ АТАКОВАТЬ`nПОСЛЕ ТАКОГО.";
dialogue_text[21] = "ЗНАЧИТ, ЕСЛИ Я БУДУ`nГРУБЫМ, ОН ПОДУМАЕТ,`nЧТО Я НЕСЧАСТЕН!";
dialogue_text[22] = "ЧТО МОЯ ЖИЗНЬ КАТИТСЯ`n В БЕЗДНУ!";
dialogue_text[23] = "ВЕДЬ Я ГОТОВ ОСКОРБИТЬ`nПЕРВОГО ВСТРЕЧНОГО`nНЕЗНАКОМЦА!";
dialogue_text[24] = "И МНЕ НУЖЕН ТОТ,`nКТО НАПРАВИТ МЕНЯ НА`nВЕРНЫЙ ПУТЬ!";
dialogue_text[25] = "ТОГДА ЧЕЛОВЕК ЗАХОЧЕТ`nСТАТЬ МОИМ ДРУГОМ И`nНАСТАВНИКОМ!";
dialogue_text[26] = "Я ПРОЙДУ ПУТЬ`nИССКУПЛЕНИЯ,`nИ В НАГРАДУ...";
dialogue_text[27] = "ЧЕЛОВЕК ДАСТ МНЕ`nПОЙМАТЬ СЕБЯ!";
dialogue_text[28] = "ЧТО Ж, ЭТО ДОВОЛЬНО`nТРУДНО, НО ДОЛЖНО`nСРАБОТАТЬ!";
dialogue_text[29] = "Я БЫ НЕ ХОТЕЛ БЫТЬ`nГРУБЫМ, НО ТАКОЙ ПУТЬ`nДОБАВИТ КРАСОК В`nИСТОРИЮ МОЕГО УСПЕХА!";
dialogue_text[30] = "НЬЕ-ХЕ-ХЕ!";

dialogue_text[31] = "ТЕМ НЕ МЕНЕЕ,`nБОЕВЫЕ НАВЫКИ ТОЖЕ`nВАЖНО ТРЕНИРОВАТЬ.";
dialogue_text[32] = "ЧЕЛОВЕК МОЖЕТ БЫТЬ...`nНЕ ОЧЕНЬ...`nДРУЖЕЛЮБНЫМ.";
dialogue_text[33] = "ДАВАЙ ПРОВЕРИМ, ГОТОВ`nЛИ Я `yДЕРЖАТЬ УДАР`b.";

dialogue_text[34] = "ОХ, ТЫ ХОЧЕШЬ`nЗАКРЕПИТЬ ПРОЙДЕННЫЙ`nУРОК О ДЕЙСТВИЯХ`nЕЩЕ РАЗ?";
dialogue_text[35] = "ЭТО ДЕЙСТВИТЕЛЬНО`nВАЖНО!";
dialogue_text[36] = "МНЕ НЕ ВСЕГДА ХВАТАЕТ`nТЕРПЕНИЯ ДЛЯ ПОВТОРОВ,`nИ Я ЗАБЫВАЮ ВСЕ,`nЧТО ИЗУЧИЛ.";
dialogue_text[37] = "ЗАТО КАЖДЫЙ РАЗ`nЯ РАДУЮСЬ КАК В ПЕРВЫЙ!!";
dialogue_text[38] = "ЭТО БЕСКОНЕЧНОЕ`nСАМОРАЗВИТИЕ!!!!";
dialogue_text[39] = "ПОДОЖДИ-КА, Я РАЗВЕ`nНЕ ПРОИЗНОСИЛ ЭТО`nСЕГОДНЯ РАНЕЕ?";

dialogue_text[40] = "УФФ, ЭТО БЫЛО НЕПЛОХО.`nТЕПЕРЬ МОЙ ЧЕРЕД!`nПРИГОТОВЬСЯ!";

dialogue_text[41] = "ОХ, КАЖЕТСЯ, Я`nНЕМНОГО ПЕРЕСТАРАЛСЯ.";
dialogue_text[42] = "ТВОЙ КОСТЮМ ТАК`nХОРОШ, ЧТО Я ДУМАЛ,`nЧТО СРАЖАЮСЬ С`nЧЕЛОВЕКОМ!";
dialogue_text[43] = "НЕУДИВИТЕЛЬНО, ЧТО МОИ`nОТЛИЧНЫЕ АТАКИ`nЗАДЕЛИ ТЕБЯ.";
dialogue_text[44] = "ЗНАЧИТ, САМОЕ ВРЕМЯ`nВОСПОЛНИТЬ СИЛЫ.";
dialogue_text[45] = "У МЕНЯ КАК РАЗ`nЕСТЬ С СОБОЙ `yКОЕ-ЧТО`n`bНА ЭТОТ СЛУЧАЙ.`nДЕРЖИ.";

dialogue_text[46] = "ВАУШКИ!`nНА ТЕБЕ НИ ЦАРАПИНЫ!";
dialogue_text[47] = "ДА, КОРОЛЕВСКАЯ`nСТРАЖА ПРАВДА`nВПЕЧАТЛЯЕТ!";
dialogue_text[48] = "В ЗНАК УВАЖЕНИЯ`nПРИМИ ОТ МЕНЯ`n`yЭТОТ ПОДАРОК`b!";
dialogue_text[49] = "СЕЙЧАС ОН ТЕБЕ`nНЕ ПРИГОДИТСЯ,`nНО ПОТОМ ОН ПОМОЖЕТ`nВОСПОЛНИТЬ СИЛЫ.";

dialogue_text[51] = "ИТАК!";
dialogue_text[52] = "МЫ РАЗОБРАЛИСЬ С`nОСНОВАМИ, И Я, КАЖЕТСЯ,`nЧУВСТВУЮ СЕБЯ`nГОТОВЫМ!!";
dialogue_text[53] = "ОДНАКО...";
dialogue_text[54] = "ИНОГДА ЭТОГО МОЖЕТ`nБЫТЬ НЕДОСТАТОЧНО.";
dialogue_text[55] = "КОГДА БИТВА ВЫХОДИТ`nЗА РАМКИ ТЕОРИИ...";
dialogue_text[56] = "НУЖНО ПРЕПОДНЕСТИ`nЧТО-ТО `lСПЕЦИАЛЬНОЕ`b.";
dialogue_text[57] = "ДА, СПЕЦИАЛЬНАЯ АТАКА!";
dialogue_text[58] = "И Я... ЭМ...... НУ.......";
dialogue_text[59] = "ВСЕ ЕЩЕ`nПРОРАБАТЫВАЮ ЕЕ.";
dialogue_text[60] = "Я ПРОБУЮ РАЗНЫЕ`nВАРИАНТЫ, НО МЕНЯ`nНЕ УСТРАИВАЕТ НИ ОДИН`nИЗ НИХ.";
dialogue_text[61] = "МНЕ ХОЧЕТСЯ, ЧТОБЫ`nОНА БЫЛА `lСПЕЦИАЛЬНОЙ`n`bСПЕЦИАЛЬНОЙ АТАКОЙ!";
dialogue_text[62] = "ЕСЛИ ТЕБЯ НЕ`nЗАТРУДНИТ, Я БЫ`nПОСМОТРЕЛ НА ТВОЮ`nСПЕЦИАЛЬНУЮ АТАКУ.";
dialogue_text[63] = "МОЖЕТ БЫТЬ, ЭТО`nВДОХНОВИТ МЕНЯ.";

dialogue_text[64] = "ОХ, ТЫ ХОЧЕШЬ`nОСТАВИТЬ ПРЕДМЕТ НА`nПОТОМ?";
dialogue_text[65] = "ВАУШКИ!";
dialogue_text[66] = "ДУМАЕШЬ, ГДЕ-ТО`nМОЖЕТ БЫТЬ ВТОРОЙ`nЧЕЛОВЕК, С КОТОРЫМ`nПРИДЕТСЯ СРАЖАТЬСЯ?";
dialogue_text[67] = "ДА, НАСТОЯЩИЙ ОХОТНИК`nИ ПРАВДА ВСЕГДА`nНАГОТОВЕ.";
dialogue_text[68] = "ХОРОШО, В ТАКОМ`nСЛУЧАЕ...";

dialogue_text[69] = "ВАУШКИ!";
dialogue_text[70] = "ЗНАЧИТ, ТВОЯ`n`lСПЕЦИАЛЬНАЯ `bАТАКА`nЭТО...";
dialogue_text[71] = "СПЕЦИАЛЬНАЯ `lЗАЩИТА`b?!";
dialogue_text[72] = "ЭТО ОЧЕНЬ ИНТЕРЕСНО!";
dialogue_text[73] = "Я ХОЧУ ПОСМОТРЕТЬ`nНА ЭТО В ДЕЙСТВИИ!";
dialogue_text[74] = "НО, ГЛЯДЯ НА`nТВОЕ СОСТОЯНИЕ,`nЯ НЕ РИСКНУ`nНАНОСИТЬ УДАР.";
dialogue_text[75] = "СНАЧАЛА ТЕБЕ СТОИТ`nИСПОЛЬЗОВАТЬ МОЙ`n`yПОДАРОК`b.";



text_length = string_length(dialogue_text[dialogue_current]);
text = string_copy(dialogue_text[dialogue_current], 0, text_length);
//dialogue_draw = string_copy(dialogue_text[dialogue_current], 0, dialogue_length);
text_x = x + 70;
text_y = y - 40;

