/// @description Отладка
// You can write your code in this editor

//отслеживание координат камеры и Человека для дебаггинга

//var start_x = camera_get_view_x(view_camera[0])
//var start_y = camera_get_view_y(view_camera[0])
//var _end_x = start_x + camera_get_view_width(view_camera[0])
//var _end_y = start_y + camera_get_view_height(view_camera[0])

//draw_text(20, 20, "Camera: \nstartx: " + string(start_x) + " start_y: " + string(start_y) + " _end_x: " + string(_end_x) + " _end_y: " + string(_end_y))
//draw_text(20, 100, "Human: \nx: " + string(x) + " y: " + string(y)) 

//draw_text(20, 20, "Human: \ncan_move: " + string(can_move)) 

//draw_text(20, 20, "String length: " + string(string_length(global.diagPhrase)) + "\nSymbols: " + string(global.symbols));



//draw_text(20, 20, global.items[0].item_name);
//draw_text(20, 50, global.items[1].item_name);
//draw_text(20, 20, string(previous_battle) + " previous battle");
//draw_text(20, 50, string(battle_type) + " battle type");
if global.debug == true {
	//draw_text(20, 450, "Mouse: " + string(mouse_x) + " " + string(mouse_y));
	if instance_exists(obj_enemy)
		draw_text(20, 50, string(steps_before_battle) + " / " + string(steps_to_battle) + " steps to battle");
}
/*if struggle >= 60 {
	draw_set_font(fnt_exit);
	draw_text_color(global.camera_x + 100, global.camera_y + 50, struggle_message, c_blue, c_blue, c_blue, c_blue, 1);
}*/
