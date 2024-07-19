/// @description Сообщить, что диалог закончился
// You can write your code in this editor
with (obj_shop_manager) {
	if state == "sell" {
		if sell_items_count == 0 {
			dialogue_x = 39;
			dialogue = second_dialogue;
			text_length = string_length(dialogue);
			text_to_draw = "";
			characters = 0;
			current_item = 1;
			current_topic = 1;
			check_button(current_button);
			state = "menu";
			alarm[1] = 5;
		}
		else {
			alarm[1] = 10;
		}
	}
	else if state == "buy" {
		audio_play_sound(snd_money, 0, 0);
		obj_shop_menu.gold += obj_shop_manager.difference;
		obj_shop_manager.difference = 0;
		instance_create_depth(421, 240, obj_shop_menu.depth + 2, obj_shop_item_info);
		alarm[1] = 10;
	}
	else {
		alarm[1] = 10;
	}
}