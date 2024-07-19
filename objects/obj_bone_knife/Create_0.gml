event_inherited();
spawned = true;
if global.language == "rus" {
	item_name = "Кост.нож";
	item_battle_name = "К.нож";
	use_text = "* Вы экипировали костяной\n  нож.";
	battle_use_text = "* Вы экипировали костяной\n  нож.";
	info_text = "* Кост. нож. ATK - 3.\n* Острее обычной кости,\n  но легко ломается.";
	pick_up_text = "* Вы нашли костяной нож.";
	shop_text = "Тонкая\nработа."
}
else {
	item_name = "Bone knife";
	item_battle_name = "B.knife";
	use_text = "* You equipped the Bone knife.";
	battle_use_text = "* You equipped the Bone knife.";
	info_text = "* Bone knife. ATK - 3.\n* Sharper than normal bone\n  but breaks easily.";
	pick_up_text = "* You found the " + item_name + ".";
}
item_index = 4;
item_type = 1;
weapon_attack = 3;
weapon_index = 2;
boned = true;
sell_cost = 0;
buy_cost = 20;
discount_cost = 10;