/// @description Прыжок
// You can write your code in this editor
image_index++;
path_start(froggit_jump, 6 * speed_coeff, path_action_stop, 0);
if (ev_end_of_path) {
	image_index = 0;
}



