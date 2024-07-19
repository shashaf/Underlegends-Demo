// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function room_goto_dark(_rm, _transition_speed = 0) {
	with obj_room_manager {
		if global.dark <= 0 {
			alarm[_transition_speed] = 1;
			room_go = _rm;
		}
	}
}