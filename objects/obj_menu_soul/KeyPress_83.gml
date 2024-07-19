if UID_mode = false { //если предмет не выбран
	if frozen = false { //если мы можем выбрать подменю
		if sub_menu == 0 { //если мы не выбрали подменю
			switch (selected) {
				case 1: //y = 24, переход с 1 на 2 подменю
					audio_play_sound(snd_menu_move, 10, 0);
					y = current_y + 39; //24 + 39 = 63
					current_y = y;
					selected ++;
					break;
				case 2: //y = 63, переход со 2 на 3 подменю
					audio_play_sound(snd_menu_move, 10, 0);
					y = current_y + 37; //64 + 37 = 101
					current_y = y; 
					selected ++;
					break;
				case 3: //y = 101, переход с 3 на 1 подменю
					audio_play_sound(snd_menu_move, 10, 0);
					//y = startY;
					y = ystart;
					current_y = y;
					selected = 1;
					break;
			}
		}
	}
	else if sub_menu == 1 and global.items[0].item_name != "" { //если мы в подменю предметов и инвентарь не пустой
		//audio_play_sound(snd_menu_move, 10, 0);
		if item_selected == 8 { //если выбран последний предмет, выбираем 1
			audio_play_sound(snd_menu_move, 10, 0);
			y = global.camera_y + 95;
			item_selected = 1;	
		}
		
		else if global.items[item_selected].item_name != "" { //если следующий слот не пустой, выбираем его
		//if y < start_y + 333  {
			audio_play_sound(snd_menu_move, 10, 0);
			y += 34;
			item_selected ++;
		}
		else { //если следующий слот пустой, выбираем 1 предмет
			if global.items[1].item_name != "" //если у нас минимум 2 предмета, воспроизводим звук
				audio_play_sound(snd_menu_move, 10, 0);
			y = global.camera_y + 95; 
			item_selected = 1;
		}
	}
	else if sub_menu == 3 { //если мы в подменю телефона
		if global.cell[1] != "" //если у нас больше 1 контакта, воспроизводим звук
			audio_play_sound(snd_menu_move, 10, 0);
		//if cell_selected < array_length_1d(global.cell) {
		//if y < start_y + 155  {
		if cell_selected == 4 {
				y = global.camera_y + 87;
				cell_selected = 1;
		}
		else {
			if global.cell[cell_selected] != "" { //если имя следующего контакта	не пустое, спускаемся на следующий
				y += 34;
				cell_selected ++;
			}
			else { //если у нас не больше 1 контакта, остаемся на 1
				y = global.camera_y + 87;
				cell_selected = 1;
			}
		}
	}
	else if sub_menu == 4 {
		//audio_play_sound(snd_menu_move, 10, 0);
		if key_item_selected == 8 { //если выбран последний предмет, выбираем 1
			audio_play_sound(snd_menu_move, 10, 0);
			y = global.camera_y + 95;
			key_item_selected = 1;	
		}
		else if global.key_items[key_item_selected].item_name != "" { //если следующий слот не пустой, выбираем его
		//if y < start_y + 333  {
			audio_play_sound(snd_menu_move, 10, 0);
			y += 34;
			key_item_selected ++;
		}
		else { //если следующий слот пустой, выбираем 1 предмет
			if global.key_items[1].item_name != "" //если у нас минимум 2 предмета, воспроизводим звук
				audio_play_sound(snd_menu_move, 10, 0);
			y = global.camera_y + 95; 
			key_item_selected = 1;
		}
	}
}