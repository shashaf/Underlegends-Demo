image_speed = 0;

if global.language == "rus" {
	if room == rm_ruins_1_prototype or room == rm_ruins_error {
		box_sprite = spr_dialogue_box2;
		phrase = "* Вы хотите завершить\n  эту игровую сессию?";
	}
	else if room == rm_reject2 {
		box_sprite = spr_dialogue_box2_yellow;
		phrase = "* Вы готовы покинуть\n  измерение отвергнутых?";
	}
}
else {
	if room == rm_ruins_1_prototype or room == rm_ruins_error {
		box_sprite = spr_dialogue_box2;
		phrase = "* Do you want to end this\n  game session?";
	}
	else if room == rm_reject2 {
		box_sprite = spr_dialogue_box2_yellow;
		phrase = "* Are you ready to leave\n  the rejected dimension?";
	}
}

phrase_length = string_length(phrase);
text_to_draw = ""; //текст для вывода на экран
yes = true; //текстовая кнопка да/нет
can_draw = false; //нужно ли выводить на экран текст
can_collide = true; //может столкнуться с игроком
default_increase = 1; //скорость появления символов на экране
increase = default_increase;
characters = 0; //кол-во символов строки для отрисовки

text = 0; //флаг для проверки выводится ли буква на экран
box_y = 350; //координаты диалог-бокса



