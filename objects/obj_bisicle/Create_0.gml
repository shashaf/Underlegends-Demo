event_inherited();
spawned = false;
if global.language == "rus" {
	item_name = "Дваскимо";
	item_battle_name = "Конфета";
	use_text = "* Ням ням!\n* Вы восстановили 10 ОЗ.";
	info_text = "* Конфета. Лечит 10 ОЗ.\n* Любимая еда из дома...";
	battle_use_text = "* Ням ням!`n* Вы восстановили 10 ОЗ.";
	shop_text = "Съешь\nдважды!";
}
else {
	item_name = "Bisicle";
	item_battle_name = "Bisicle";
	use_text = "* You eat one half of the\n  Bisicle.\n* You have restored 11 HP.";
	info_text = "* Bisicle. Heals 11 HP.\n* It's a two-pronged popsicle,\n  so you can eat it twice.";
	battle_use_text = "* You eat one half of the\n  Bisicle.\n* You have restored 11 HP.";
	shop_text = "Eat it twice!";
}

item_index = 9;
item_type = 0;
item_heals = 11;
buy_cost = 15;
discount_cost = 10;
sell_cost = 5;




