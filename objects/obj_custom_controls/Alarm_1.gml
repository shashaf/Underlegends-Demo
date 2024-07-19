/// @description Сбросить клавиши
global.left = vk_left;
global.right = vk_right;
global.down = vk_down;
global.up = vk_up;
global.enter = vk_enter;
global.shift = vk_shift;
global.ctrl = vk_control;

with (obj_menu_settings) {
	left = get_key_name(global.left);
	right = get_key_name(global.right);
	up = get_key_name(global.up);
	down = get_key_name(global.down);
	enter = get_key_name(global.enter);
	shift = get_key_name(global.shift);
	ctrl = get_key_name(global.ctrl);

	current_keys[0] = global.left;
	current_keys[1] = global.right;
	current_keys[2] = global.up;
	current_keys[3] = global.down;
	current_keys[4] = global.enter;
	current_keys[5] = global.shift;
	current_keys[6] = global.ctrl;
}
keyboard_unset_map();
alarm[0] = 1;
/*ini_open("session_info.ini")

ini_write_real("Controls", "LeftKey", global.left);
ini_write_real("Controls", "RightKey", global.right);
ini_write_real("Controls", "DownKey", global.down);
ini_write_real("Controls", "UpKey", global.up);
ini_write_real("Controls", "EnterKey", global.enter);
ini_write_real("Controls", "ShiftKey", global.shift);
ini_write_real("Controls", "CtrlKey", global.ctrl);

ini_close()
*/