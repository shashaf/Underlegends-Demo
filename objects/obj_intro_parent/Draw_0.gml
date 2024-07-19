//var start_x = camera_get_view_x(view_camera[0]);
//var start_y = camera_get_view_y(view_camera[0]);
var _end_y = camera_get_view_height(view_camera[0]);
var _end_x = camera_get_view_width(view_camera[0]);
draw_self();
if can_draw == true {
	draw_sprite_tiled_ext(spr_dark, -1, global.camera_x, global.camera_y, _end_x, _end_y, 0, alpha);
}