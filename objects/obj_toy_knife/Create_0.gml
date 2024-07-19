event_inherited();
spawned = true;
if global.language == "rus" {
	item_name = "Игр.нож";
	item_battle_name = "И.нож";
	use_text = "* Вы экипировали игрушечный\n  нож.";
	battle_use_text = "* Вы экипировали игрушечный\n  нож.";
	info_text = "* Игруш. нож. ATK - 5.\n* Не особо опасен.";
	pick_up_text = "* Вы нашли игрушечный нож.";
}
else {
	item_name = "Toy knife";
	item_battle_name = "T.knife";
	use_text = "* You equipped the Toy knife.";
	battle_use_text = "* You equipped the Toy knife.";
	info_text = "* Toy knife. ATK - 5.\n* Not very dangerous.";
	pick_up_text = "* You found the " + item_name + ".";
}
item_index = 4;
item_type = 1;
weapon_attack = 5;
weapon_index = 2;

/*if global.game_status != 0 {
	instance_destroy();
}*/