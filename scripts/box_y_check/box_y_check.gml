// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function box_y_check(){
	if obj_patience.y >= global.camera_y + 240 {
		box_y = 20;
	}
	else {
		box_y = 350;
	}
	return box_y;
}