ini_open("session_info.ini")
global.left = ini_read_real("Controls", "LeftKey", vk_left);
global.right = ini_read_real("Controls", "RightKey", vk_right);
global.down = ini_read_real("Controls", "DownKey", vk_down);
global.up = ini_read_real("Controls", "UpKey", vk_up);
global.enter = ini_read_real("Controls", "EnterKey", vk_enter);
global.shift = ini_read_real("Controls", "ShiftKey", vk_shift);
global.ctrl = ini_read_real("Controls", "CtrlKey", vk_control);
ini_close();
alarm[0] = 1;

/*global.left = ord("J");
global.right = ord("L");
global.down = ord("K");
global.up = ord("I");*/
