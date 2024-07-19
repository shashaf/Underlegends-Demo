event_inherited();
spawned = true;
if global.language == "rus" {
	item_name = "Монстр-конфета";
	item_battle_name = "М. конфета";
	use_text = "* Ням Ням!\n* Не так плохо!\n* Вы восстановили 7 ОЗ.";
	info_text = "* Монстр-конфета. Лечит 7 ОЗ.\n* Выглядит вкусно, но\n  какая она на вкус?";
	battle_use_text = "* Ням Ням!`n* Не так плохо!`n* Вы восстановили 7 ОЗ.";
	pick_up_text = "* Вы нашли монстр-конфету.";
}
else {
	item_name = "Monster candy";
	item_battle_name = "M. candy";
	use_text = "* Yum Yum!\n*Not so bad!\n* You have restored 7 HP.";
	info_text = "* Monster candy. Heals 7 HP.\n* Looks delicious, but\n  what does it taste like?";
	battle_use_text = "* Yum Yum!`n*Not so bad!`n* You have restored 7 HP.";
	pick_up_text = "* You found the " + item_name + ".";
}
item_index = 6;
item_type = 0;
item_heals = 7;


if global.fun < 20 or global.fun > 39 {
	var _in_inventory = false;
	for (var _i = 0; _i < 8; _i++) {
		if global.item_IDs[_i] == item_index
			_in_inventory = true;
	}
	if _in_inventory == false
		instance_destroy();
}