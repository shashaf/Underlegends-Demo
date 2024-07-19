event_inherited();
spawned = false;
if global.language == "rus" {
	item_name = "Пластырь";
	item_battle_name = "Пластырь";
	use_text = "* Вы повторно наложили\n  пластырь. Он всё ещё липкий\n* Вы восстановили 10 ОЗ.";
	info_text = "* Пластырь. Лечит 10 ОЗ.\n* Он уже использовался\n  много раз.";
}	
else {
	item_name = "Bandage";
	item_battle_name = "Bandage";
	use_text = "* You re-applied the bandage.\n* Still kind of gooey.";
	info_text = "* Bandage. Heals 10 HP.\n* It has already been\n  used many times.";
}
item_index = 5;
item_type = 0;
item_heals = 10;