/// @description Insert description here
// You can write your code in this editor

//отслеживание координат камеры и Фриска для дебаггинга

var _start_x = camera_get_view_x(view_camera[0])
var _start_y = camera_get_view_y(view_camera[0])
var _end_x = _start_x + camera_get_view_width(view_camera[0])
var _end_y = _start_y + camera_get_view_height(view_camera[0])

//draw_text(20, 20, "Camera: \nstartx: " + string(start_x) + " start_y: " + string(start_y) + " _end_x: " + string(_end_x) + " _end_y: " + string(_end_y))
//draw_text(20, 100, "Frisk: \nx: " + string(x) + " y: " + string(y)) 

//draw_text(20, 20, "Frisk: \ncan_move: " + string(can_move)) 

//draw_text(20, 20, "String length: " + string(string_length(global.diagPhrase)) + "\nSymbols: " + string(global.symbols));

//draw_text(20, 200, "Mouse: " + string(mouse_x) + " " + string(mouse_y));