/// @description Действиe 3
// You can write your code in this editor
can_be_spared = true;
if global.language == "rus" {
	if enemy_name == "Жёлтый фроггит" {
		enemy_name = "Белый фроггит";	
		act3_text ="* Вы перекрасили фроггита...`n  ...зачем-то.`n* Теперь он жёлтый.";
		dialogue_text[2] = "`bКва, ква.";
		check_text = "* " + enemy_name + ". ATK - 4" + " ЗАЩ - " + string(enemy_check_df) + ".`n* Теперь он весь белый, без`n  `yжёлтого `wпятна на спине.";
		
	}
	else if enemy_name == "Белый фроггит" {	
		enemy_name = "Жёлтый фроггит";
		act3_text ="* Вы перекрасили фроггита...`n  ...зачем-то.`n* Теперь он белый.";
		dialogue_text[2] = "`yКва`b, `yква`b.";
		check_text = "* " + enemy_name + ". ATK - 4" + " ЗАЩ - " + string(enemy_check_df) + ".`n* На самом деле он белый, но у`n  него `yжёлтое `wпятно на спине.";
	}
}
else {
	if enemy_name == "Yellow froggit" {
		enemy_name = "White froggit";
		act3_text ="* You have recolored the froggit...`n  ...for some reason.`n* It is yellow now.";
		dialogue_text[2] = "`bRibbit, ribbit.";
		check_text = "* " + enemy_name + ". ATK - " + string(enemy_at) + " DEF - " + string(enemy_check_df) + ".`n* Now it is white without a`n  `yyellow `wspot on its back.";
	}
	else if enemy_name == "White froggit" {
		enemy_name = "Yellow froggit";
		act3_text ="* You have recolored the froggit...`n  ...for some reason.`n* It is white now.";
		dialogue_text[2] = "`yRibbit`b, `yribbit`b.";
		check_text = "* " + enemy_name + ". ATK - " + string(enemy_at) + " DEF - " + string(enemy_check_df) + ".`n* It is actually white with a`n  `yyellow `wspot on its back.";
	}
}




obj_battle_manager.alarm[2] = 150;