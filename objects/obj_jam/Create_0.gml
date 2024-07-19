event_inherited();
spawned = false;

item_index = 24;
item_type = 0;
item_heals = 20;

item_name = "Jam";
item_battle_name = "Jam";
use_text = "* Jar of jam.\n* It is signed \"For Lemike\".";
info_text = "* Jar of jam.\n* It is signed \"For Lemike\".";
battle_use_text = "* You gave the sheriff a jar of`n  jam.`n* It is signed \"For Lemike\".";
if global.language == "rus" {
	item_name = "Джем";
	item_battle_name = "Джем";
	use_text = "* Банка джема.\n* На ней написано \"Для Лемике\".";
	info_text = "* Банка джема.\n* На ней написано \"Для Лемике\".";
	battle_use_text = "* Вы протянули шерифу банку джема.`n* На ней написано \"Для Лемике\".";
}

