//start_x = camera_get_view_x(view_camera[0]);
//start_y = camera_get_view_y(view_camera[0]);
box_y = box_y_check(); //сообщаем координаты для отрисовки текста

if (characters < dialogue_length) { //классическая отрисовка фразы по символу
	characters ++;
	dialogue_draw = string_copy(dialogue[dialogue_current], 0, characters);
			
		var _character = (string_char_at(dialogue[dialogue_current], characters)); //текущий символ
			
		if (text == 1) and (_character != " ") {
			text = 0;
			audio_play_sound(snd_text2, 10, 0);
		}
		if text < 1 {
			text += increase;
		}
		if (enter_z_check() or shift_x_check()) {
			characters = dialogue_length
			dialogue_draw = string_copy(dialogue[dialogue_current], 0, characters);
		}
}
else { //если фраза уже отрисована, закрывается любой активной кнопкой
	if (enter_z_check()) {
		if dialogue_current < dialogue_end {
			dialogue_current++;
			dialogue_draw = "";
			dialogue_length = string_length(dialogue[dialogue_current]);
			characters = 0;
		}
		else {
			instance_destroy();
		}
	}
}
