event_inherited();
spawned = false;
if global.language == "rus" {
	item_name = "Гр.перчатка";
	item_battle_name = "Гр.перч.";
	use_text = "* Вы экипировали грубую\n  перчатку.";
	battle_use_text = "* Вы экипировали грубую\n  перчатку.";
	info_text = "* Груб. перч. ATK - 5.\n* Изношенная розовая кожаная\n  перчатка. Для пятипалых персон.";
	pick_up_text = "* Вы нашли игрушечный нож.";
	shop_text = "Задай им.";
}
else {
	item_name = "Tough Glove";
	item_battle_name = "T.Glove";
	use_text = "* You equipped the Tough glove.";
	battle_use_text = "* You equipped the Tough glove.";
	info_text = "* Toy knife. ATK - 5.\n* A worn pink leather glove.\n  For five fingered folk.";
	pick_up_text = "* You found the " + item_name + ".";
	shop_text = "Slap 'em.";
}
item_index = 7;
item_type = 1;
weapon_attack = 5;
weapon_index = 3;

buy_cost = 50;
discount_cost = 30;
sell_cost = 50;
