//draw_set_font(fnt_InGameMenu_name);
draw_set_font(fnt_in_game_menu_name_rus);
//draw_text(0, 0, "Cell: (selected / all) " + string(cell_selected) + "  " + string(array_length_1d(global.cell)));
//draw_text(0, 15, "Items: (selected / all) " + string(item_selected) + "  " + string(array_length_1d(global.items)));

if sub_menu == 1 { //если выбрано меню предметов
	if action == false { //если не выбраны Use, Info или Drop
		draw_text(226, 54, items_text);
		draw_text(226, 88, global.items[0].item_name); //отрисовываем инвентарь
		draw_text(226, 122, global.items[1].item_name);
		draw_text(226, 156, global.items[2].item_name);
		draw_text(226, 190, global.items[3].item_name);
		draw_text(226, 224, global.items[4].item_name);
		draw_text(226, 258, global.items[5].item_name);
		draw_text(226, 292, global.items[6].item_name);
		draw_text(226, 326, global.items[7].item_name);
	}
} 

//if stat = true {
if sub_menu == 2 { //если мы в подменю характеристик
	if global.player_lv >= 3 {
		//stat_sprite = spr_menuStatKills;
		draw_sprite(stat_kills_sprite, 0, 188, 52); //рисуем меню характеристик
		draw_text(480, 405, string(global.killed));
	}
	else {
		//stat_sprite = spr_menuStat;
		draw_sprite(stat_sprite, 0, 188, 52); //рисуем меню характеристик
	}
	//draw_sprite(spr_menuStat, 0, 188, 52); //рисуем меню характеристик
	//draw_sprite(stat_sprite, 0, 188, 52); //рисуем меню характеристик
	draw_text(226, 85, "\"" + string(global.human_1_name) + "\"") //пишем имя игрока в кавычках
	
	draw_text(266, 145, string(global.player_lv)); //пишем характеристики игрока
	draw_text(266, 179, string(global.player_hp) + " / " + string(global.player_max_hp));
	
	draw_text(266, 242, string(global.player_attack) + " (" + string(global.item_attack) + ")");
	draw_text(266, 275, string(global.player_defence) + " (" + string(global.item_defence) + ")");
	
	draw_text(452, 242, string(global.player_exp));
	draw_text(466, 275, string(global.player_exp_to_lv - global.player_exp));
	
	draw_text(324, 331, global.player_weapon.item_name); //снаряжение игрока
	draw_text(310, 364, global.player_armor.item_name);
	draw_text(310, 405, string(global.player_gold));
	
}

if sub_menu == 3 { //если мы в подменю телефона, отрисовываем контакты
	draw_text(226, 80, global.cell[0]);
	draw_text(226, 114, global.cell[1]);
	draw_text(226, 148, global.cell[2]);
	draw_text(226, 182, global.cell[3]);
}
if sub_menu == 4 {
	//if action == false { //если не выбраны Use, Info или Drop
		draw_text(226, 54, key_items_text);
		draw_text(226, 88, global.key_items[0].item_name); //отрисовываем ключевые предметы
		draw_text(226, 122, global.key_items[1].item_name);
		draw_text(226, 156, global.key_items[2].item_name);
		draw_text(226, 190, global.key_items[3].item_name);
		draw_text(226, 224, global.key_items[4].item_name);
		draw_text(226, 258, global.key_items[5].item_name);
		draw_text(226, 292, global.key_items[6].item_name);
		draw_text(226, 326, global.key_items[7].item_name);
	//}
}