in_dialogue = false; //проверка находися ли мы в диалоге

box_sprite = spr_dialogue_box2;
dialogue_font = fnt_dialogue_rus;
if global.language == "rus" {
	dialogue_font = fnt_dialogue_rus;
}
dialogue_voice = snd_text2;
dialogue_start = 0;
dialogue_current = dialogue_start; //индекс текущей фразы всего диалога
dialogue_draw = ""; //строка для отрисовки фразы, изначально пустая
default_increase = 1; //скорость появления символов на экране
increase = default_increase;
characters = 0; //кол-во символов строки для отрисовки
buffer = "";
//talked = false;

distance_to_player = 3;

next_m = false; //флаг для перехода на новую реплику
text = 0; //флаг для проверки выводится ли буква на экран
pause = false; //флаг для проверки паузы
need_buffer = true; //флаг для проверки нужна ли копия в буфер


if obj_patience.y >= global.camera_y + 240 {
	box_y = 20;
}
else {
	box_y = 350;
}
depth = obj_patience.depth + 1000;