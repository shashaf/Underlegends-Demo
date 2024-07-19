selected = 1; //1 - ITEM, 2 - STAT, 3 - CELL
//current_x = x;
//startY = y;
//current_y = startY;
current_y = ystart;
sub_menu = 0; //0 - ничего, 1 - items, 2 - stat, 3 - cell, 4 - ключевые предметы
//items = false;
//stat = false;
//cell = false;
item_selected = 1;
key_item_selected = 1;
cell_selected = 1;
frozen = false;
UID_mode = false;
UID_select = 1;
action = false;
depth = -9999;

key_items_text = "   KEY ITEMS";
items_text = "   ITEMS";
stat_sprite = spr_menu_stat;
stat_kills_sprite = spr_menu_stat_kills;
if global.language == "rus" {
	stat_sprite = spr_menu_stat_rus;
	stat_kills_sprite = spr_menu_stat_kills_rus;
	key_items_text = "  КЛЮЧ. ПРЕДМЕТЫ";
	items_text = "  ПРЕДМЕТЫ";
}
if instance_exists(obj_dark_room){
	depth = obj_dark_room.depth - 1;
}

