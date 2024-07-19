if UID_mode == false { //если предмет не выбран
	if frozen = false { //если мы можем выбрать подменю
		if sub_menu == 0 { //если мы не выбрали подменю
			switch (selected) {
				case 1: //переход с 1 на 3 подменю
					audio_play_sound(snd_menu_move, 10, 0);
					y = current_y + 77; //24 + 77 = 101
					current_y = y;
					selected = 3;
					break;
				case 2: //переход со 2 на 1 подменю
					audio_play_sound(snd_menu_move, 10, 0);
					//y = startY;
					y = ystart;
					current_y = y;
					selected --;
					break;
				case 3: //переход с 3 на 2 подменю
					audio_play_sound(snd_menu_move, 10, 0);
					y = current_y - 38; //101 - 38 = 63
					current_y = y;
					selected --;
					break;
			}
		}	
	}
	else if sub_menu == 1 { //если мы в подменю предметов
		//audio_play_sound(snd_menu_move, 10, 0);
		if (item_selected > 1) { // and global.items[cell_selected - 1] != "") { //если мы не на 1 предмете, выбираем предыдущий
		//if y > start_y + 95 {
			audio_play_sound(snd_menu_move, 10, 0);
			y -= 34;
			item_selected --;
		}
		else { //если мы на 1 предмете
			if global.items[1].item_name == "" { //если у нас не больше 1 предмета
				item_selected = 1; //остаемся на 1
			}
			else { //если минимум 2 предмета
				audio_play_sound(snd_menu_move, 10, 0);
				item_selected = 8; //изначально выбираем 8 слот
				y = global.camera_y + 333; 
				 do { //если слот пустой, поднимаемся на предыдущий
					y -= 34;
					item_selected --;
				}
				until (global.items[item_selected].item_name != "");
				item_selected ++;
				y += 34;
				//y = start_y + 333;
				//y = start_y + 95 + 34*(array_length_1d(global.items) - 2)
				//item_selected = 8;
			}
		}
	}

	else if sub_menu == 3 { //если мы в подменю телефона
		if global.cell[1] != "" //если у нас больше 1 контакта, воспроизводим звук
			audio_play_sound(snd_menu_move, 10, 0); 
		if (cell_selected > 1) { //если выбран не 1 контакт
		//if y > start_y + 87 {
			y -= 34; //выбираем предыдущий
			cell_selected --;
		}
		else { //если выбран 1 контакт
			cell_selected = 4; //изначально выбираем последний слот
			y = global.camera_y + 155 + 34;
			do { //если слот пустой, поднимаемся на предыдущий
				y -= 34;
				cell_selected --;
			}
			until (global.cell[cell_selected] != "");
			cell_selected ++;
			y += 34;
			//y = start_y + 87 + 34*(array_length_1d(global.cell)- 2)
			//cell_selected = array_length_1d(global.cell) - 1;
		}
	}
	else if sub_menu == 4 {
		if (key_item_selected > 1) { // and global.items[cell_selected - 1] != "") { //если мы не на 1 предмете, выбираем предыдущий
			audio_play_sound(snd_menu_move, 10, 0);
			y -= 34;
			key_item_selected --;
		}
		else { //если мы на 1 предмете
			if global.key_items[1].item_name == "" { //если у нас не больше 1 предмета
				key_item_selected = 1; //остаемся на 1
			}
			else { //если минимум 2 предмета
				audio_play_sound(snd_menu_move, 10, 0);
				key_item_selected = 8; //изначально выбираем 8 слот
				y = global.camera_y + 333; 
				 do { //если слот пустой, поднимаемся на предыдущий
					y -= 34;
					key_item_selected --;
				}
				until (global.key_items[key_item_selected].item_name != "");
				key_item_selected ++;
				y += 34;
			}
		}
	}
}
