event_inherited();
if global.language == "rus" {
	item_name = "Пластырь";
	item_battle_name = "Пластырь";
	use_text = "* Вы повторно наложили пластырь.\n* Он всё ещё липкий.";
	info_text = "* Пластырь. ЗАЩ - 1.\n* Он уже использовался\n  много раз.";
}	
else {
	item_name = "Bandage";
	item_battle_name = "Bandage";
	use_text = "* You re-applied the bandage.\n* Still kind of gooey.";
	info_text = "* Bandage. DEF - 1.\n* It has already been\n  used many times.";
}
item_index = 1;
item_type = 2;
armor_defence = 1;
invisible_time = 3;
armor_index = 1;
sell_cost = 10;
