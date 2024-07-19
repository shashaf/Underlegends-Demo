dialogue_start = 0;
dialogue_end = 0;
dialogue[0] = "* Default text";
dialogue_current = dialogue_start; //индекс текущей фразы всего диалога
dialogue_draw = ""; //строка для отрисовки фразы, изначально пустая
default_increase = 1; //скорость появления символов на экране
increase = default_increase;
characters = 0; //кол-во символов строки для отрисовки
//buffer = "";
symbols = 1;
width = 0
row = 0;
text_height = 28;

next_m = false; //флаг для перехода на новую реплику
text = 0; //флаг для проверки выводится ли буква на экран
pause = false; //флаг для проверки паузы
//need_buffer = true; //флаг для проверки нужна ли копия в буфер

box_y = box_y_check(); //сообщаем координаты для отрисовки текста
text_x = 80;

if instance_exists(obj_dark_room){
	depth = obj_dark_room.depth - 1;
}

dialogue_length = string_length(dialogue[dialogue_current]);