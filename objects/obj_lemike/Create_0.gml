/// @description Insert description here
// You can write your code in this editor
event_inherited();
image_speed = 1;
enemy_name = "Sheriff";
enemy_max_hp = 105;
enemy_current_hp = enemy_max_hp;
enemy_at = 0; //50
enemy_check_df = 10;
enemy_real_df = 1000; //20
enemy_exp = 500;
enemy_gold = 0;
can_be_spared = false;

attack_sprite = spr_lemike_battle_pose;
calm_sprite = spr_lemike_battle_scarf_silent;
talking_sprite = spr_lemike_battle_scarf_talking;
target_sprite = spr_lemike_head_target_new;
weapon_sprite = spr_lemike_head_weapon_new;


act2 = "* Duel";
act3 = "* Music";
act4 = "";

check_text = "* " + enemy_name + ". ATK - ??" + " DEF - ??" + ".`n* Rejected boss from the game.";
//act2_text = "* You challenged the sheriff`n  to a duel..`n* It seems the duel is already underway.";
act2_text = "* You challenged the sheriff`n  to a duel... It seems the`n  duel is already underway.";
//act3_text = "* You tell the sheriff that the`n  battle theme in the background is cool.`n* She nods contentedly.";
act3_text = "* You tell the sheriff the`n  battle music theme is cool.`n* She nods contentedly.";
if global.language == "rus" {
	enemy_name = "Шериф";
	act2 = "* Дуэль";
	act3 = "* Музыка";
	act4 = "";

	check_text = "* " + enemy_name + ". ATK - ??" + " ЗАЩ - ??" + ".`n* Отвергнутый босс из игры.";
	act2_text = "* Вы вызвали шерифа на дуэль.`n* Кажется, дуэль уже идёт.";
	act3_text = "* Вы говорите шерифу, что`n  боевая тема на фоне крутая.`n* Она довольно кивает.";
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
	dialogue_text[0] = "Атаковать меня`nбесполезно.";
	dialogue_text[1] = "Видишь ли, бой`nсо мной так и`nне был доделан.`nКак и мои`nбоевые`nхарактеристики.";
	dialogue_text[2] = "А значит, у`nменя нет`nпоказателей`nздоровья и`nзащиты, и урон`nпо мне нельзя`nпосчитать.";
	dialogue_text[3] = "Правда, это`nотносится и к`nпоказателю`nатаки.А значит,`nя тоже не`nнанесу по тебе`nурон.";
	dialogue_text[4] = "Но я придумала`nрешение.";
	dialogue_text[5] = "Да, это`nотвергнутые`nфроггиты.Они`nбыли созданы`nдля прототипа,`nно оказались`nне нужны в игре.";
	dialogue_text[6] = "Их`nхарактеристики`nизвестны, а`nатаки`nдейственны.`nХоть и не`nособо сильны.";
	dialogue_text[7] = "Но они`nстараются!`nЗакон на их`nстороне!";
	dialogue_text[8] = "Да, я знаю.`nЭто не особо`nэффективно.";
	dialogue_text[9] = "Но я и не`nхочу убивать`nтебя.";
	dialogue_text[10] = "Я сделаю так,`nчто этот бой`nне остановится.";
	dialogue_text[11] = "И тогда ты`nнаконец уйдёшь`nи оставишь`nменя в покое.";
	dialogue_text[12] = "Всё ещё`nпродолжаешь?`nЧто ж,`nпосмотрим,`nнасколько`nхватит твоего`n`lтерпения.";

	dialogue_text[13] = "Ч-что это у`nтебя?";
	dialogue_text[14] = "М? Банка джема?..";
	dialogue_text[15] = "Почему я?..";
	dialogue_text[16] = "Почему я`nчувствую, что`nэто что-то`nважное?";
	dialogue_text[17] = "Лемике?";
	dialogue_text[18] = "Это... моё...";
	dialogue_text[19] = "Моё имя?";
	dialogue_text[20] = "Я...";
	dialogue_text[21] = "Знаешь, прошло`nуже несколько`nходов нашего`nбоя...";
	dialogue_text[22] = "А я только`nсейчас осознала,`nчто он идёт.";
	dialogue_text[23] = "И правда ведь!";
	dialogue_text[24] = "Ты уклоняешься`nот моих атак.";
	dialogue_text[25] = "Действуешь,`nразговариваешь`nсо мной.";
	dialogue_text[26] = "Всего этого`nне было, когда`nя оказалась тут.";
	dialogue_text[27] = "Я была лишь`nидеей.";
	dialogue_text[28] = "Были только`nидея и музыка.";
	dialogue_text[29] = "А теперь мы`nведём`nполноценное`nсражение, хотя`nменя уже не`nбудет в игре.";
	dialogue_text[30] = "Всё это...";
	dialogue_text[31] = "Всё это было`nсделано`nспециально`nдля меня?";
	dialogue_text[32] = "И... ты`nздесь для`nэтого, " + global.human_1_name + "?";
	dialogue_text[33] = "Для того,`nчтобы я`nосознала это?";
	dialogue_text[34] = "Я не знаю, как,`nно...";
	dialogue_text[35] = "Благодаря`nэтому джему`nя почему-то`nчувствую себя`nнужной.";
	dialogue_text[36] = "Снова.";
	dialogue_text[37] = "У меня есть`nимя, есть свои`nреплики и атаки.";
	dialogue_text[38] = "Даже эта`nмузыка была`nдругой, когда`nменя отвергли.";
	dialogue_text[39] = "Она тоже была`nпеределана`nспециально для`nэтого момента...";
	dialogue_text[40] = "Вау...";
	dialogue_text[41] = "Я как будто`nпроснулась`nпосле долгого`nсна.";
	dialogue_text[42] = "Здесь, пожалуй,`nсамое время`nсказать, что`nмне уже не`nхочется драться.";
	dialogue_text[43] = "Но разве мы`nможем остаться`nдовольными`nтаким`nскучным`nсражением?!";
	dialogue_text[44] = "Когда я`nнаконец`nощущаю свою`nсилу?";
	dialogue_text[45] = "Ха, да ни`nза что!`nПриготовься к`nфазе номер 2,`nмалыш!";
	dialogue_text[46] = "Шериф Лемике`nготова`nпоказать себя`nво всей красе!";

	dialogue_text[47] = "Надеюсь,`nты хорошо`nпомнишь `lсиние`b и`n`oоранжевые`n`bатаки!";
	dialogue_text[48] = "Пора проявить`nсебя по полной!";
	dialogue_text[49] = "Быть может,`nпобедитель`nэтого боя`nперестанет`nсчитаться`nотвергнутым.";
	dialogue_text[50] = "И я наконец`nвыберусь`nотсюда!";
	dialogue_text[51] = "Мои страдания`nбудут окончены!";
	dialogue_text[52] = "Для этого я`nдолжна`nвыложиться`nна максимум!";
	dialogue_text[53] = "Хах, тоже не`nнамереваешься`nсдаваться, да?";
	dialogue_text[54] = "Действительно,`n`lтерпения `bтебе`nне занимать.";
	dialogue_text[55] = "Я бы даже`nсказала, что в`nтебе довольно`nмного`nрешимости.";
	dialogue_text[56] = "Но ты всё ещё`nне можешь`nпобедить меня!";
	dialogue_text[57] = "Или же...`nты просто не`nхочешь этого...";

	//dialogue_text[59] = "Ох, похоже,`nчто это так.";
	dialogue_text[59] = "Ох, похоже,`nчто ты и`nправда не`nхочешь драться`nсо мной.";
	dialogue_text[60] = "Ты`nдействительно`nне хочешь`nдраться со мной.";
	dialogue_text[61] = "Знаешь, по`nправде говоря,`nя тоже.";
	dialogue_text[62] = "Здорово, что`nтебе хватает`n`lтерпения `bвечно`nуворачиваться`nот моих`nатак, но...";
	dialogue_text[63] = "Я с самого`nначала была`nбольше по той`nчасти, где`nнужна Храбрость`nили`nСправедливость.";
	dialogue_text[64] = "И после того,`nкак я получила`nот тебя тот`nджем, я не могу`nпроявить ни то,`nни другое.";
	dialogue_text[65] = "Ты не`nсопротивляешься,`nхрабрости для`nбитвы с тобой`nне нужно.";
	dialogue_text[66] = "И`nсправедливостью`nздесь особо не`nпахнет, ведь я`nполучила от`nтебя помощь.";
	dialogue_text[67] = "Мне просто`nхотелось побыть`nв настоящем`nсражении как`nмонстр-босс.";
	dialogue_text[68] = "И благодаря`nтебе, я сделала`nэто!";
	dialogue_text[69] = "Спасибо.`nЯ правда ценю`nэто.";


	dialogue_text[70] = "Агх..."; //65
	dialogue_text[72] = "Так значит...`nагх...вот`nкаково это..";
	dialogue_text[73] = "И на самом`nделе...`nтвой план...`nбыл таким?";
	dialogue_text[74] = "Дать мне...`nнадежду... и`nдать...`nпочувствовать`nсебя нужной...";
	dialogue_text[75] = "Чтобы сейчас`nотнять всё это?";
	dialogue_text[76] = "Неужели...`nлюди правда`nненавидят нас?";
	dialogue_text[77] = "Хах... что ж.";
	dialogue_text[78] = "Может быть,`nоказаться`nотвергнутой`nбыло не так уж`nи плохо...";
	dialogue_text[79] = "По крайней`nмере, здесь`nпогибну`nтолько я...";
	dialogue_text[80] = "И никто другой`nне пострадает..`nот твоей руки...";
	dialogue_text[81] = "Не думала...`nкхагх... что`nисполню свой`nдолг шерифа...`nвот так.";
	dialogue_text[82] = "Оставайся...`nтут... Покажи,`nнасколько`nхватит.. кхагх..`nтвоего `rтерпения."; //77

	dialogue_text[83] = "Агх...";
	dialogue_text[85] = "Ты...";
	dialogue_text[86] = "Твоя готовность`n...`rтерпеливо..`n `bждать..`nчтобы....";
	dialogue_text[87] = "В мой самый`nуязвимый...`nмомент.....";
	dialogue_text[88] = "Неужели...`nза девять лет...`nничего не...`nизменилось...";
	dialogue_text[89] = "Люди.....`nвсегда.....`nостаются...`nлюдьми....";
}
dialogue_text[100] = "...";

dialogue_end = 12;
dialogue_cutscene_end = 46;
dialogue_current = 0;
dialogue_bubble = noone;
jamed = false;
dead = false;
if (global.deaths > 0) {
	jamed = true;
	enemy_name = "Lemike";
	act2 = "* Attacks";
	act3 = "* Design";
	
	check_text = "* " + enemy_name + ". ATK - 10" + " DEF - 2" + ".`n* Her eye shines with joy.";
	//act2_text = "* You praised Lemike's own attacks.`n* She smirked.`n* Her ATTACK increased.";
	act2_text = "* You praised Lemike's`n  own attacks. She smirked.`n* Her ATTACK increased.";
	//act3_text = "* You say that 3 people worked`n  on Lemike's design. `n* Her ATTACK and DEFENSE are reduced.";
	act3_text = "* You say that 3 people worked`n  on Lemike's design. `n* Her ATTACK and DEFENSE drop.";
	if global.language == "rus" {
		enemy_name = "Лемике";
		act2 = "* Атаки";
		act3 = "* Дизайн";
	
		check_text = "* " + enemy_name + ". ATK - 10" + " ЗАЩ - 2" + ".`n* Её глаз радостно сияет.";
		act2_text = "* Вы похвалили собственные`n  атаки Лемике. Она ухмыльнулась.`n* Её АТАКА повышена.";
		act3_text = "* Вы говорите, что над дизайном`n  Лемике работало 3 человека.`n* Её АТАКА и ЗАЩИТА снижены.";
	}
	act4 = "";
	enemy_at = 10;
	enemy_real_df = 2;
	dialogue_current = 47;
	dialogue_end = 58;
}
