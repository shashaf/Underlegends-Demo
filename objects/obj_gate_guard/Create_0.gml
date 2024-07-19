/// @description Insert description here
// You can write your code in this editor
event_inherited();
image_speed = 1;
enemy_name = "Guard";
enemy_max_hp = 680;
enemy_current_hp = enemy_max_hp;
enemy_at = 20; //50
enemy_check_df = 20;
enemy_real_df = 20; //20
enemy_exp = 200;
enemy_gold = 0;
can_be_spared = false;

attack_sprite = spr_papyrus_battle;
calm_sprite = spr_papyrus_battle;
talking_sprite = spr_papyrus_battle_talking;
target_sprite = spr_papyrus_target;
weapon_sprite = spr_papyrus_weapon;


act2 = "* Encourage";
act3 = "* Insult";
act4 = "";

check_text = "* " + enemy_name + ". ATK - 20" + " DEF - 20" + ".`n* He likes to say:`n  \"Nyeh-heh-heh!\".";
//act2_text = "* You challenged the sheriff`n  to a duel..`n* It seems the duel is already underway.";
act2_text = "* You told the guard that he`n  would definitely catch the`n  human if he kept trying.";
//act3_text = "* You tell the sheriff that the`n  battle theme in the background is cool.`n* She nods contentedly.";
act3_text = "* You told the guard that he`n  would never achieve anything..";
if global.language == "rus" {
	enemy_name = "Стражник";
	//act2 = "* Воодушевить";
	//act3 = "* Оскорбить";
	act2 = "";
	act3 = "";
	act4 = "";

	check_text = "* " + enemy_name + ". ATK - 20" + " ЗАЩ - 20" + ".`n* Он любит говорить:`n  \"Нье хе хе!\".";
	act2_text = "* Вы сказали стражнику, что он`n  обязательно поймает человека,`n  если продолжит стараться.";
	act3_text = "* Вы сказали стражнику, что он`n  никогда ничего не добьётся.";
}
act4_text = "";

dialogue_text[0] = "Attacking me`nis pointless.";
dialogue_text[1] = "You see, the`nfight with me`nwas never`nfinished.`nJust like my`ncombat stats.";
dialogue_text[2] = "So, I have no`nhealth and`ndefense stats,`nand damage`ncannot be`ncalculated`nagainst me.";
dialogue_text[3] = "But this also`napplies to`nthe attack stat.`nSo, I also`nwon't deal`ndamage to you.";
dialogue_text[4] = "But I've come`nup with a`nsolution.";
dialogue_text[5] = "The rejected`nFroggits. They`nwere created`nfor the`nprototype, but`nwon't be in a`nfull game.";
dialogue_text[6] = "Their stats`nare known, and`ntheir attacks`nare effective.`nThough not very`nstrong.";
dialogue_text[7] = "But they do`ntheir best! The`nlaw is on`ntheir side!";
dialogue_text[8] = "Yes, I know.`nIt's not very`neffective.";
dialogue_text[9] = "But I don't`nwant to kill`nyou.";
dialogue_text[10] = "I'll make sure`nthis fight`ndoesn't end.";
dialogue_text[11] = "And then you'll`nfinally leave`nme alone.";
dialogue_text[12] = "Still`npersisting?`nWell, let's see`nhow much`n`lpatience `byou`nhave left.";

dialogue_text[13] = "Wh-what is`nthat you have?";
dialogue_text[14] = "Huh? A jar of`njam?..";
dialogue_text[15] = "Why do I...";
dialogue_text[16] = "Why do I`nfeel like this`nis something`nimportant?";
dialogue_text[17] = "Lemike?";
dialogue_text[18] = "This... is...`nmy.....";
dialogue_text[19] = "My name?";
dialogue_text[20] = "I...";
dialogue_text[21] = "You know, it's`nbeen several`nturns of our`nfight already...";
dialogue_text[22] = "And I only`njust realized`nit now.";
dialogue_text[23] = "That's right!";
dialogue_text[24] = "You're dodging`nmy attacks.";
dialogue_text[25] = "You're acting,`ntalking with`nme.";
dialogue_text[26] = "None of this`nwas happening`nwhen I first`ngot here.";
dialogue_text[27] = "I was just`nan idea.";
dialogue_text[28] = "There were`nonly an idea`nand the music.";
dialogue_text[29] = "And now we`nhave a complete`nfight, even`nthough I won't`nbe in the`ngame anymore.";
dialogue_text[30] = "All this...";
dialogue_text[31] = "All this was`nmade`nspecifically`nfor me?";
//dialogue_text[32] = "And... are you here for`nthat, " + global.human_1_name + "?";
dialogue_text[32] = "And... you are`nhere for that,`n" + global.human_1_name + "?";
dialogue_text[33] = "To make me`nrealize that?";
dialogue_text[34] = "I don't know`nhow, but...";
dialogue_text[35] = "Thanks to this`njam, I`nstrangely feel`nneeded.";
dialogue_text[36] = "Again.";
dialogue_text[37] = "I have a name,`nI have my`ndialogue lines`nand attacks.";
dialogue_text[38] = "Even this`nmusic was`ndifferent`nwhen I was`nrejected.";
dialogue_text[39] = "It was also`nredone`nspecifically`nfor this`nmoment...";
dialogue_text[40] = "Wow...";
dialogue_text[41] = "It's like I`nwoke up from`na long dream.";
dialogue_text[42] = "Here, I think`nit's time to`nsay that I no`nlonger want`nto fight.";
dialogue_text[43] = "But can we be`nsatisfied`nwith such a`nboring battle?!";
dialogue_text[44] = "When I finally`nfeel my`nstrength?";
dialogue_text[45] = "Haha, no way!`nGet ready for`nphase 2, kid!";
dialogue_text[46] = "Sheriff Lemike`nis ready to`nshow herself in`nall her glory!";

dialogue_text[47] = "I hope you`nremember `lblue`n`band `oorange`n`battacks well!";
dialogue_text[48] = "Time to show`nyour full`npotential!";
dialogue_text[49] = "Perhaps the`nwinner of this`nfight will no`nlonger be`nconsidered`nrejected.";
dialogue_text[50] = "And I'll`nfinally get`nout of here!";
dialogue_text[51] = "My suffering`nwill be over!";
dialogue_text[52] = "For that, I`nmust give it`nmy all!";
dialogue_text[53] = "Haha, you're`nnot going to`ngive up either,`nhuh?";
dialogue_text[54] = "Indeed, you`nhave `lpatience`n`bin abundance.";
dialogue_text[55] = "I would even`nsay you have`na lot of`ndetermination.";
dialogue_text[56] = "But you still`ncan't defeat`nme!";
dialogue_text[57] = "Or maybe...`nyou just don't`nwant to...";

//dialogue_text[59] = "Oh, it looks like`nthat's the case.";
dialogue_text[59] = "Oh, it seems`nlike you really`ndon't want to`nfight with me.";
dialogue_text[60] = "You... really`ndon't want to`nfight with me.";
dialogue_text[61] = "You know, to be`nhonest, me`nneither.";
dialogue_text[62] = "It's great that`nyou have`n`lpatience`b to`nforever dodge`nmy attacks, but...";
dialogue_text[63] = "From the very`nbeginning, I`nwas more about`nBravery or`nJustice.";
dialogue_text[64] = "And after I`ngot that jam`nfrom you, I`ncan't show`nany of these.";
dialogue_text[65] = "You're not`nfight back,`nthere's no need`nfor Bravery`nto fight you.";
dialogue_text[66] = "And there's no`nJustice here`neither, since I`ngot help from`nyou.";
dialogue_text[67] = "I just wanted`nto be in a`nreal fight as`nthe boss`nmonster.";
dialogue_text[68] = "And thanks to`nyou, I did it!";
dialogue_text[69] = "Thank you.`nI really`nappreciate`nthat.";


dialogue_text[70] = "Ouch..."; //65
dialogue_text[72] = "So... ugh...`nthat's what`nit's like..";
dialogue_text[73] = "And actually...`nyour plan...`nwas that?";
dialogue_text[74] = "To give me...`na hope... and`nmake me feel`nneeded...";
dialogue_text[75] = "Just to take`nit all away`nnow?";
dialogue_text[76] = "Do humans...`nreally hate us`nthat much?";
dialogue_text[77] = "Haha... well.";
dialogue_text[78] = "Maybe...being`nrejected wasn't`nso bad after`nall...";
dialogue_text[79] = "At least, only`nI'll die here...";
dialogue_text[80] = "And no one else`nwill suffer...`nfrom your hand...";
dialogue_text[81] = "I didn't`nthink... agh...`nI'd fulfill my`nsheriff duty...`nlike this.";
dialogue_text[82] = "Stay... here...`nShow me...`n...how much...`nyour `rpatience`n`bwill last.";


dialogue_text[83] = "Ouch...";
dialogue_text[85] = "You...";
dialogue_text[86] = "Your...`nwillingness`n...to wait.....`n`rpatiently.. `bto..";
dialogue_text[87] = "At my most`nvulnerable...`n..moment...";
dialogue_text[88] = "Has nothing...`n..changed...`n...after nine`nyears?...";
dialogue_text[89] = "Humans.....`n..always....`nremain.....`n...humans...";

if global.language == "rus" {
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
	dialogue_text[30] = "ВЕЛИКИЙ КОРОЛЕВСКИЙ`nСТРАЖНИК, НАЧИНАВШИЙ`nКАК ХУЛИГАН ИЗ`nФОНТРЕССА!";
	dialogue_text[31] = "НЬЕ-ХЕ-ХЕ!";
	
	dialogue_text[32] = "ТЕМ НЕ МЕНЕЕ,`nБОЕВЫЕ НАВЫКИ ТОЖЕ`nВАЖНО ТРЕНИРОВАТЬ.";
	dialogue_text[33] = "ЧЕЛОВЕК МОЖЕТ БЫТЬ...`nНЕ ОЧЕНЬ...`nДРУЖЕЛЮБНЫМ.";
	dialogue_text[34] = "ДАВАЙ ПРОВЕРИМ, ГОТОВ`nЛИ Я `yДЕРЖАТЬ УДАР`b.";

	dialogue_text[35] = "ОХ, ТЫ ХОЧЕШЬ`nЗАКРЕПИТЬ ПРОЙДЕННЫЙ`nУРОК О ДЕЙСТВИЯХ`nЕЩЕ РАЗ?";
	dialogue_text[36] = "ЭТО ДЕЙСТВИТЕЛЬНО`nВАЖНО!";
	dialogue_text[37] = "МНЕ НЕ ВСЕГДА ХВАТАЕТ`nТЕРПЕНИЯ ДЛЯ ПОВТОРОВ,`nИ Я ЗАБЫВАЮ ВСЕ,`nЧТО ИЗУЧИЛ.";
	dialogue_text[38] = "ЗАТО КАЖДЫЙ РАЗ`nЯ РАДУЮСЬ КАК В ПЕРВЫЙ!!";
	dialogue_text[39] = "ЭТО БЕСКОНЕЧНОЕ`nСАМОРАЗВИТИЕ!!!!";
	dialogue_text[40] = "ПОДОЖДИ-КА, Я РАЗВЕ`nНЕ ПРОИЗНОСИЛ ЭТО`nСЕГОДНЯ РАНЕЕ?";

	dialogue_text[41] = "УФФ, ЭТО БЫЛО НЕПЛОХО.`nТЕПЕРЬ МОЙ ЧЕРЕД!`nПРИГОТОВЬСЯ!";

	dialogue_text[42] = "ОХ, КАЖЕТСЯ, Я`nНЕМНОГО ПЕРЕСТАРАЛСЯ.";
	dialogue_text[43] = "ТВОЙ КОСТЮМ ТАК`nХОРОШ, ЧТО Я ДУМАЛ,`nЧТО СРАЖАЮСЬ С`nЧЕЛОВЕКОМ!";
	dialogue_text[44] = "НЕУДИВИТЕЛЬНО, ЧТО МОИ`nОТЛИЧНЫЕ АТАКИ`nЗАДЕЛИ ТЕБЯ.";
	dialogue_text[45] = "САМОЕ ВРЕМЯ`nВОСПОЛНИТЬ СИЛЫ.";
	dialogue_text[46] = "У МЕНЯ КАК РАЗ`nЕСТЬ С СОБОЙ `yКОЕ-ЧТО`n`bНА ЭТОТ СЛУЧАЙ.`nДЕРЖИ.";

	dialogue_text[47] = "ВАУШКИ!`nНА ТЕБЕ НИ ЦАРАПИНЫ!";
	dialogue_text[48] = "ДА, КОРОЛЕВСКАЯ`nСТРАЖА ПРАВДА`nВПЕЧАТЛЯЕТ!";
	dialogue_text[49] = "В ЗНАК УВАЖЕНИЯ`nПРИМИ ОТ МЕНЯ`n`yЭТОТ ПОДАРОК`b!";
	dialogue_text[50] = "СЕЙЧАС ОН ТЕБЕ`nНЕ ПРИГОДИТСЯ,`nНО ПОТОМ ОН ПОМОЖЕТ`nВОСПОЛНИТЬ СИЛЫ.";
	
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
	dialogue_text[61] = "МНЕ ХОЧЕТСЯ, ЧТОБЫ`nЭТО БЫЛА `lСПЕЦИАЛЬНАЯ`n`bСПЕЦИАЛЬНАЯ АТАКА!";
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
	
	dialogue_text[76] = "ЭТО БЫЛО ТАК...";
	dialogue_text[77] = "СПЕЦИАЛЬНО`nИ ЗАЩИЩЕННО!";
	dialogue_text[78] = "Я ЧУВСТВУЮ, ЧТО`nМОИ АТАКИ БЫЛИ`nПОЧТИ БЕСПОЛЕЗНЫ!";
	dialogue_text[79] = "ЭТО ВПЕЧАТЛЯЕТ!";
	dialogue_text[80] = "НА ЭТОМ МОЖНО`nЗАВЕРШИТЬ НАШУ`nТРЕНИРОВКУ";
	dialogue_text[81] = "Я МНОГОЕ УЗНАЛ,`nСПАСИБО ТЕБЕ,`nВЕЛИКИЙ ОХОТНИК`nНА ЛЮДЕЙ!!";
}
dialogue_text[100] = "...";

dialogue_end = 2;
dialogue_cutscene_end = 46;
dialogue_current = 0;
dialogue_bubble = undefined;

act_count = 0;
dead = false;

