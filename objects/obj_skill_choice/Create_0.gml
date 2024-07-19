image_speed = 0;
image_index = 0;

question_text = "What is Patience for you?";
question_x = 152; 
question_y = 106;

first_option_text = "The ability to continue on the path\n       despite the pain received";
first_option_x = 76;
first_option_y = 192;

second_option_text = "The ability to wait for the key moment\n   that will turn the situation around";
second_option_x = 52;
second_option_y = 192;

third_option_text = "The ability to remain calm\n     in the face of danger";
third_option_x = 145;
third_option_y = 192;



first_skill_text = "(Starting DEF is 2 instead of 0)";
first_skill_x = 102;
first_skill_y = 338;

second_skill_text = "     (Turn all attacks `bblue`w`nfor 3 seconds by pressing C)";
second_skill_x = 116;
second_skill_y = 323;

third_skill_text = "(All attacks are slower for 1 turn)";
third_skill_x = 79;
third_skill_y = 338;

choose_text = "Z / Enter - Choose";
back_text = "X / Shift  - Back";

confirm_question = "Are you sure?";
yes = "Z / Enter - Yes";
no = "X / Shift  - No";

if global.language == "rus" {
	question_text = "Что вы называете Терпением?";
	first_option_text = "Способность продолжать путь,\nнесмотря на полученную боль";
	second_option_text = "Способность выждать ключевой момент,\n   который перевернёт ситуацию";
	third_option_text = "Способность оставаться спокойным\n      перед лицом опасности";
	first_skill_text = "(Начальная ЗЩ будет 2 вместо 0)";
	second_skill_text = "(Сделать атаки `bсиними`w`nна 3 секунды, нажав C)";
	third_skill_text = "(Все атаки медленнее на 1 ход)";
	choose_text = "Z / Enter - Выбрать";
	back_text = "X / Shift  - Назад";
	confirm_question = "Вы уверены?";
	yes = "Z / Enter - Да";
	no = "X / Shift  - Нет";
	
	first_option_x = 96;
	first_skill_x = 84;
	
	second_skill_x = 145;
	second_skill_y = 306;
	
	third_option_x = 66
}

confirm_x = 192;
back_x = 382;
buttons_y = 390;

current_option = 1;

confirm = false;

symbols = 1;
width = 0
row = 0;
text_height = 32;