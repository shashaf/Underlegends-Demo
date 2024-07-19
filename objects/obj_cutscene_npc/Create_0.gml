in_dialogue = false; //проверка находися ли мы в диалоге
begin_dialogue = false;

dialogue_x = 170;
dialogue_start = 0;
dialogue_current = dialogue_start; //индекс текущей фразы всего диалога
dialogue_draw = ""; //строка для отрисовки фразы, изначально пустая
default_increase = 1; //скорость появления символов на экране
increase = default_increase;
characters = 0; //кол-во символов строки для отрисовки
buffer = "";
dialogue_length = 0;
box_sprite = spr_dialogue_box3;


next_m = false; //флаг для перехода на новую реплику
text = 0; //флаг для проверки выводится ли буква на экран
pause = false; //флаг для проверки паузы
need_buffer = true; //флаг для проверки нужна ли копия в буфер

start_y = camera_get_view_y(view_camera[1]);

if obj_patience.y >= start_y + 240 {
	box_y = 20;
}
else {
	box_y = 350;
}
depth = obj_patience.depth + 2;