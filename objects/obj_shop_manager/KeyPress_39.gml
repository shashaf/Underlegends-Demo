//gold_x++;
//buy_x++;
//dialogue_x++;
if state == "sell" and sell_list_2 != "" and in_dialogue == false {
	if dialogue == sell_list_2 {
		dialogue = sell_list_1;
		text_to_draw = sell_list_1;
		characters = string_length(text_to_draw);
		text_length = string_length(text_to_draw);
		current_item = 1;
		check_option(current_item);
	}
	else if dialogue == sell_list_1 {
		dialogue = sell_list_2;
		text_to_draw = sell_list_2;
		characters = string_length(text_to_draw);
		text_length = string_length(text_to_draw);
		current_item = 1;
		check_option(current_item);
	}
}