image_speed = 0;
image_index = 0;
current_option = 1;
lang = false;
exit_buttons = false;
setting_key = false;
button_pressed = false;
wrong_key = false;
key_x = 512;
key_y = 146;
font = fnt_in_game_menu_name;
if global.language == "rus" {
	sprite_index = spr_settings_screen_rus;
	font = fnt_in_game_menu_name_rus;
}
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


banned_keys[0] = vk_left;
banned_keys[1] = vk_right;
banned_keys[2] = vk_up;
banned_keys[3] = vk_down;
banned_keys[4] = vk_enter;
banned_keys[5] = vk_shift;
banned_keys[6] = vk_control;
banned_keys[7] = vk_space
banned_keys[8] = ord("A");
banned_keys[9] = ord("D");
banned_keys[10] = ord("S");
banned_keys[11] = ord("W");
banned_keys[12] = ord("Z");
banned_keys[13] = ord("X");
banned_keys[14] = ord("C");
banned_keys[15] = vk_f4;
banned_keys[16] = vk_escape;

for (var _i = 0; _i < 7; _i++) {
	if current_keys[_i] == banned_keys[_i] {
		can_draw_key[_i] = false;
	}
	else {
		can_draw_key[_i] = true;
	}
}