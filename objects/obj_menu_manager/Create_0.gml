//Menu types:
//0 - start menu
//1 - castle menu
//2 - forest menu
//3 - water menu
//4 - air menu
//5 - earth menu
//6 - fire menu
//7 - chaos menu

ini_open("save.ini")

global.menu_type = ini_read_real("Global", "Menu", 0);

ini_close();
global.menu_music = mus_menu_start;

buttons = undefined;
last_button = undefined;
current_button = 0;
reset = false;
yes = true;
if global.language == "rus" {
	instruction = spr_instruction_rus;
	confirm_text = "Вы уверены?";
	if global.enough != 0 {
		confirm_text = "Хочешь всё исправить?";
		audio_sound_pitch(global.menu_music, 0.8);
	}
}
else {
	instruction = spr_instruction;
	confirm_text = "Are you sure?";
	if global.enough != 0 {
		confirm_text = "Want to fix everything?";
		audio_sound_pitch(global.menu_music, 0.8);
	}
}
