/// @description Insert description here
// You can write your code in this editor

name_chosen = false;
up_case = ["A", "B", "C", "D", "E", "F", "G", 
"H", "I", "J", "K", "L", "M", "N", 
"O", "P", "Q", "R", "S", "T", "U", 
"V", "W", "X", "Y", "Z"];

low_case = ["a", "b", "c", "d", "e", "f", "g", 
"h", "i", "j", "k", "l", "m", "n",
"o", "p", "q", "r", "s", "t", "u", 
"v", "w", "x", "y", "z"];

if global.language == "rus" {
	buttons = ["Выйти", "Стереть", "Готово"];
	default_confirm_text = "Это имя правильное?";
	warning_text = "У вас должно быть имя.";
}
else {
	buttons = ["Quit", "Backspace", "Done"];
	default_confirm_text = "Is this name correct?";
	warning_text = "You must have a name.";
}
yes = false;
no = true;

done = true;

confirm_text = default_confirm_text;
current_letter = 0;
current_button = -1;
current_name = "";
special_text = "";
human = 1;
//audio_play_sound(mus_menu_start, 0, 1);

scale_x = 1;
scale_y = 1;