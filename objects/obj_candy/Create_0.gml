event_inherited();
spawned = false;
if global.language == "rus" {
	item_name = "Конфета";
	item_battle_name = "Конфета";
	use_text = "* Ням ням!\n* Вы восстановили 10 ОЗ.";
	info_text = "* Конфета. Лечит 10 ОЗ.\n* Любимая еда из дома...";
	battle_use_text = "* Ням ням!`n* Вы восстановили 10 ОЗ.";
}
else {
	item_name = "Candy";
	item_battle_name = "Candy";
	use_text = "* Yum Yum!\n* You have restored 10 HP.";
	info_text = "* Candy. Heals 10 HP.\n* Your favorite food from\n  home..";
	battle_use_text = "* Yum Yum!`n* You have restored 10 HP.";
}

item_index = 15; 
item_type = 0;
item_heals = 10;
sell_cost = 5;



