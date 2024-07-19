/// @description Назначить клавиши
// You can write your code in this editor
keyboard_set_map(global.left, vk_left);
keyboard_set_map(global.right, vk_right);
keyboard_set_map(global.down, vk_down);
keyboard_set_map(global.up, vk_up);
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("D"), vk_right);
keyboard_set_map(ord("S"), vk_down);
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("Z"), vk_enter);
keyboard_set_map(ord("X"), vk_shift);
keyboard_set_map(ord("C"), vk_control);
keyboard_set_map(global.enter, vk_enter);
keyboard_set_map(global.shift, vk_shift);
keyboard_set_map(global.ctrl, vk_control);

ini_open("session_info.ini")

ini_write_real("Controls", "LeftKey", global.left);
ini_write_real("Controls", "RightKey", global.right);
ini_write_real("Controls", "DownKey", global.down);
ini_write_real("Controls", "UpKey", global.up);
ini_write_real("Controls", "EnterKey", global.enter);
ini_write_real("Controls", "ShiftKey", global.shift);
ini_write_real("Controls", "CtrlKey", global.ctrl);

ini_close();

