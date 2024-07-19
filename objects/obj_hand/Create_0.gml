event_inherited();
spawned = false;
//spawned = true;
if global.language == "rus" {
	item_name = "Рука";
	item_battle_name = "Рука";
	//use_text = "* Вы сжали руку в кулак.`\* Рука слегка покраснела.";
	use_text = "* Вы использовали руку, чтобы\n  отредактировать файлы игры\n  и прочитать это.";
	info_text = "* Ваша рука. ATK - 0.\n* Обычно не является оружием.";
}
else {
	item_name = "Hand";
	item_battle_name = "Hand";
	//use_text = "* You clenched your hand into a fist.\n* The hand turned slightly red.";
	use_text = "* You used your hand to\n edit the game files\n  and read this.";
	info_text = "* Your hand. ATK - 0.\n* Not a weapon usually.";
}
item_index = 2;
item_type = 1;
weapon_attack = 0;
weapon_index = 1;
sell_cost = 0;


 