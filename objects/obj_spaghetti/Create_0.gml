event_inherited();
spawned = false;
if global.language == "rus" {
	item_name = "Спагетти";
	item_battle_name = "Спагетти";
	use_text = "* Вы попробовали спагетти.\n* Вкус сложно описать словами.\n* Вы восстановили ВСЕ ОЗ.";
	info_text = "* Спагетти. Лечит 5 ОЗ.\n* Подарок от стражника ворот из замка.";
	battle_use_text = "* Вы попробовали спагетти.`n* Вкус сложно описать словами.`n* Вы восстановили ВСЕ ОЗ.";
	shop_text = "Спагетти";
}
else {
	item_name = "Spaghetti";
	item_battle_name = "Spaghetti";
	use_text = "* You've tasted spaghetti.\n*The taste is difficult to describe.\n* Your HP have been MAXED OUT.";
	info_text = "* Spaghetti. Heals 5 HP.\n* A Gift from the castle gate guard.";
	battle_use_text = "* You've tasted spaghetti.`n*The taste is difficult to describe.`nYour HP have been MAXED OUT.";
	shop_text = "Bunny!";
}

item_index = 10;
item_type = 0;
item_heals = global.player_max_hp;
buy_cost = 25;
discount_cost = 15;
sell_cost = 20;




