if UID_mode == true { //переключение между Use, Info и Drop
	if sub_menu == 1 {
		audio_play_sound(snd_menu_move, 10, 0);
		switch (UID_select) {
			case 2:
				x -= 101;
				UID_select --;
				break;
			case 3:
				x -= 113;
				UID_select --;
				break;
			case 1:
				x += 101;
				x += 113;
				UID_select = 3;
				break;
		}
	}
}
/*else if sub_menu == 1 {
	audio_play_sound(snd_menu_move, 10, 0);
	sub_menu = 4;
	obj_menu_items.image_index = 1;
}*/
else if sub_menu == 4 {
	if global.items[0] != obj_empty_item {
		audio_play_sound(snd_menu_move, 10, 0);
		sub_menu = 1;
		obj_menu_items.image_index = 0;
	}
	else {
		audio_play_sound(snd_deal_failed, 0, 0);
	}
}