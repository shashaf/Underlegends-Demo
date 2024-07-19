/// @description Действие 3
// You can write your code in this editor
if global.language == "rus" {
	if enemy_name == "Зелёный фроггит" {
		enemy_name = "Белый фроггит";
		act2 = "* Убеждать";
		act2_text ="* Вы сказали фроггиту, что`n  белый подходит ему. Он`n  уважает ваши познания о моде.";
		act3_text ="* Вы перекрасили фроггита.`n* Теперь он зелёный.";
		dialogue_text[2] = "`bКва, ква.";
		check_text = "* " + enemy_name + ". ATK - 4" + " ЗАЩ - " + string(enemy_check_df) + ".`n* Теперь он весь белый, без`n  `gзелёного `wпятна на спине.";
		obj_battle_manager.can_flee = true;
	}
	else if enemy_name == "Белый фроггит" {
		enemy_name = "Зелёный фроггит";
		act2 = "* Доверять";
		act2_text ="* Вы сказали фроггиту, что`n  зелёный подходит ему. Он ценит,`n  что вы уважаете его выбор.";
		act3_text ="* Вы перекрасили фроггита.`n* Теперь он белый.";
		dialogue_text[2] = "`gКва`b, `gква`b.";
		check_text = "* " + enemy_name + ". ATK - " + string(enemy_at) + " ЗАЩ - " + string(enemy_check_df)+ ".`n* На самом деле он белый, но у`n  него `gзелёное `wпятно на спине.";
		obj_battle_manager.can_flee = false;
	}
}
else {
	if enemy_name == "Green froggit" {
		enemy_name = "White froggit";
		act2 = "* Convince";
		act2_text ="* You told froggit that white`n  suits it. It respects your`n  fashion knowledge.";
		act3_text ="* You have recolored the froggit.`n* It is green now.";
		dialogue_text[2] = "`bRibbit, ribbit.";
		check_text = "* " + enemy_name + ". ATK - " + string(enemy_at) + " DEF - " + string(enemy_check_df) + ".`n* Now it is white without a`n  `ggreen `wspot on its back.";
		obj_battle_manager.can_flee = true;
	}
	else if enemy_name == "White froggit" {
		enemy_name = "Green froggit";
		act2 = "* Trust";
		act2_text ="* You told froggit that green`n  suits it. It appreciates that`n  you respect its choice.";
		act3_text ="* You have recolored the froggit.`n* It is white now.";
		dialogue_text[2] = "`gRibbit`b, `gribbit`b.";
		obj_battle_manager.can_flee = false;
		check_text = "* " + enemy_name + ". ATK - " + string(enemy_at) + " DEF - " + string(enemy_check_df) + ".`n* It is actually white with a`n  `ggreen `wspot on its back.";
	}
}

obj_battle_manager.alarm[2] = 150;