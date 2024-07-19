//gold_y--;
//buy_y--;
//dialogue_y--;
if (in_dialogue == false) {
	switch (state) {
		case "menu":
			if current_button > 1 {
				current_button--;
			}
			else {
				current_button = 4;
			}
			check_button(current_button);
			break;
		case "buy":
			if current_item > 1 {
				current_item--;
			}
			else {
				current_item = 5;
			}
			if current_item < 5 {
				obj_shop_item_info.visible = true;
				with (obj_shop_item_info) {
					item = other.items[other.current_item-1];
					get_item_info(item);
				}
			}
			else {
				obj_shop_item_info.visible = false;
			}
			check_option(current_item);
			break;
		case "sell":
			if current_item > 1 {
				var _count = sell_items_count;
				if dialogue == sell_list_2 {
					_count = _count - 4;
				}
				current_item--;
				//while (current_item > sell_items_count) {
				while (current_item > _count) {
					current_item--;
				}
			}
			else {
				current_item = 5;
			}
			check_option(current_item);
			break;
		case "talk":
			if current_topic > 1 {
				current_topic--;
			}
			else {
				current_topic = 5;
			}
			check_option(current_topic);
			break;
		case "confirm_buy":
			if (obj_shop_soul_patience.y == 336) {
				obj_shop_soul_patience.y = 371;
			}
			else if (obj_shop_soul_patience.y == 371) {
				obj_shop_soul_patience.y = 336;
			}
			break;
		case "confirm_sell":
			if (obj_shop_soul_patience.y == 336) {
				obj_shop_soul_patience.y = 371;
			}
			else if (obj_shop_soul_patience.y == 371) {
				obj_shop_soul_patience.y = 336;
			}
			break;
	}
}