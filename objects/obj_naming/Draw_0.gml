/// @description Insert description here
/// @description Insert description here
// You can write your code in this editor
//draw_set_font(fnt_exit);
//draw_text(200, 450, "Mouse: " + string(mouse_x) + " " + string(mouse_y));




if name_chosen == false {
	draw_set_font(fnt_in_game_menu_name_rus);
	if global.language == "rus" {
		draw_text(180, 50, "Назовите упавшего человека " + string(human) + "."); //отрисовка просьбы выбрать имя
	}
	else {
		draw_text(180, 50, "Name the fallen human "  + string(human) + "."); //отрисовка просьбы выбрать имя
	}
	draw_set_font(fnt_in_game_menu_name);
	draw_text(295, 90, current_name); //отрисовка ввода имени
	
	if special_text == "I al_low you." or special_text == "Wowie!" or special_text == "YOU FORGOT THE LETTER!!" 
	or special_text == "Я разрешаю тебе." or special_text == "Ваушки!" or special_text == "ТЫ ЗАБЫЛ БУКВУ!!" {
		draw_set_font(fnt_papyrus_rus);
		draw_text(200, 435, special_text); //отрисовка спец. сообщений
	}
	
	else if special_text == "YOU FORGOT THE LETTER!!" or special_text == "ТЫ ЗАБЫЛ БУКВУ!!" {
		draw_set_font(fnt_papyrus_rus);
		draw_text(100, 435, special_text); //отрисовка спец. сообщений
	}
	else if special_text == "кажется, что-то есть позади тебя" {
		draw_set_font(fnt_in_game_menu_name_rus);
		draw_text(100, 440, special_text); //отрисовка спец. сообщений
	}
	else if special_text == "nope" or special_text == "неа" {
		draw_set_font(fnt_sans);
		draw_text(200, 440, special_text);
	}
	else {
		draw_set_font(fnt_in_game_menu_name_rus);
		draw_text(200, 440, special_text); //отрисовка спец. сообщений
	}
	draw_set_font(fnt_in_game_menu_name);
	for (var _i = 0; _i <= 2; _i++) { //отрисовка кнопок
		var _button_x = 135;
	
		switch (_i) {
			case 0:
				_button_x = 135;
				break;
			case 1:
				_button_x = 260;
				break;
			case 2:
				_button_x = 465;
				break;
		}
	
		if (_i == current_button) { //выбранная кнопка желтая
			if (_i == 2) and (done == false) //если нельзя принять имя, третья кнопка не показывается
				break;
			else
				draw_set_font(fnt_in_game_menu_name_rus);
				draw_text_color(_button_x, 390, buttons[_i], c_yellow, c_yellow, c_yellow, c_yellow, 1)
		}
		else { 
			if (_i == 2) and (done == false) //если нельзя принять имя, третья кнопка не показывается
				break;
			else //не выбранные кнопки белые
				draw_set_font(fnt_in_game_menu_name_rus);
				draw_text(_button_x, 390, buttons[_i])
		}
	}

	for (var _i = 0; _i <= 25; _i++) { //отрисовка заглавных букв
		var _up_case_x = 135;
		var _up_case_y = 125;
		var _indent = 65
		if _i < 7 {
			_up_case_x = _i*_indent + 135;
			_up_case_y = 125;
		}
		else if _i < 14 {
			_up_case_x = (_i-7)*_indent + 135;
			_up_case_y = 155;
		}
		else if _i < 21 {
			_up_case_x = (_i-14)*_indent + 135;
			_up_case_y = 185;
		}
		else {
			_up_case_x = (_i-21)*_indent + 135;
			_up_case_y = 215;
		}
		if _i == current_letter {
			draw_text_color(_up_case_x, _up_case_y, up_case[_i], c_yellow, c_yellow, c_yellow, c_yellow, 1)
		}
		else {
			draw_text(_up_case_x, _up_case_y, up_case[_i])
		}
	}
	for (var _i = 0; _i <= 25; _i++) { //отрисовка строчных букв
		var _low_case_x= 135;;
		var _low_case_y = 250;
		var _indent = 65
		if _i < 7 {
			_low_case_x = _i*_indent + 135;
			_low_case_y = 250;
		}
		else if _i < 14 {
			_low_case_x = (_i-7)*_indent + 135;
			_low_case_y = 280;
		}
		else if _i < 21 {
			_low_case_x = (_i-14)*_indent + 135;
			_low_case_y = 310;
		}
		else {
			_low_case_x = (_i-21)*_indent + 135;
			_low_case_y = 340;
		}
		if _i == (current_letter-26) { //буква с курсором жёлтая
			draw_text_color(_low_case_x, _low_case_y, low_case[_i], c_yellow, c_yellow, c_yellow, c_yellow, 1)
		}
		else { //остальные буквы белые
			draw_text(_low_case_x, _low_case_y, low_case[_i])
		}
	}
}
else {
	draw_set_font(fnt_in_game_menu_name_rus);
	if global.language == "rus" {
		//draw_text(155, 100, "Это имя правильное?");
		//draw_text(155, 100, confirm_text);
		if yes == true {
			if current_name != "" {
				draw_text_color(170, 350, "Да", c_yellow, c_yellow, c_yellow, c_yellow, 1);
				draw_text(430, 350, "Нет");
			}
			else {
				draw_text_color(430, 350, "Назад", c_yellow, c_yellow, c_yellow, c_yellow, 1);
			}
		}
		else if no == true {
			if current_name != "" {
				draw_text(170, 350, "Да");
				draw_text_color(430, 350, "Нет", c_yellow, c_yellow, c_yellow, c_yellow, 1);
			}
			else {
				draw_text_color(430, 350, "Назад", c_yellow, c_yellow, c_yellow, c_yellow, 1);
			}
		}
	}
	else {
		//draw_text(155, 100, "Is this name correct?");
		//draw_text(155, 100, confirm_text);
		if yes == true {
			if current_name != "" {
				draw_text_color(170, 350, "Yes", c_yellow, c_yellow, c_yellow, c_yellow, 1);
				draw_text(430, 350, "No");
			}
			else {
				draw_text_color(430, 350, "Back", c_yellow, c_yellow, c_yellow, c_yellow, 1);
			}
		}
		else if no == true {
			if current_name != "" {
				draw_text(170, 350, "Yes");
				draw_text_color(430, 350, "No", c_yellow, c_yellow, c_yellow, c_yellow, 1);
			}
			else {
				draw_text_color(430, 350, "Back", c_yellow, c_yellow, c_yellow, c_yellow, 1);
			}
		}
	}
	draw_text(155, 100, confirm_text);
	draw_text_transformed(200, 200, current_name, scale_x, scale_y, 0);

	//draw_text(200, 450, "Mouse: " + string(mouse_x) + " " + string(mouse_y));
}