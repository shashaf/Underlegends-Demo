// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_key_name(key){
	var _string_key = "";
	switch (key) {
		case vk_left:
			_string_key = "left";
			break;
		case vk_right:
			_string_key = "right";
			break;
		case vk_down:
			_string_key = "down";
			break;
		case vk_up:
			_string_key = "up";
			break;
		case vk_enter:
			_string_key = "Enter";
			break;
		case vk_shift:
			_string_key = "Shift";
			break;
		case vk_control:
			_string_key = "Ctrl";
			break;
			
		case vk_alt:
			_string_key = "Alt";
			break;
		case vk_tab:
			_string_key = "Tab";
			break;
		case vk_pause:
			_string_key = "Pause";
			break;
		case vk_printscreen:
			_string_key = "Print";
			break;
			
		case vk_f1:
			_string_key = "F1";
			break;
		case vk_f2:
			_string_key = "F2";
			break;
		case vk_f3:
			_string_key = "F3";
			break;
		case vk_f4:
			_string_key = "F4";
			break;
		case vk_f5:
			_string_key = "F5";
			break;
		case vk_f6:
			_string_key = "F6";
			break;
		case vk_f7:
			_string_key = "F7";
			break;
		case vk_f8:
			_string_key = "F8";
			break;
		case vk_f9:
			_string_key = "F9";
			break;
		case vk_f10:
			_string_key = "F10";
			break;
		case vk_f11:
			_string_key = "F11";
			break;
		case vk_f12:
			_string_key = "F12";
			break;
		
		case vk_numpad0:
			_string_key = "Num 0";
			break;
		case vk_numpad1:
			_string_key = "Num 1";
			break;
		case vk_numpad2:
			_string_key = "Num 2";
			break;
		case vk_numpad3:
			_string_key = "Num 3";
			break;
		case vk_numpad4:
			_string_key = "Num 4";
			break;
		case vk_numpad5:
			_string_key = "Num 5";
			break;
		case vk_numpad6:
			_string_key = "Num 6";
			break;
		case vk_numpad7:
			_string_key = "Num 7";
			break;
		case vk_numpad8:
			_string_key = "Num 8";
			break;
		case vk_numpad9:
			_string_key = "Num 9";
			break;
			
		case vk_add:
			_string_key = "Num +";
			break;
		case vk_subtract:
			_string_key = "Num -";
			break;
		case vk_multiply:
			_string_key = "Num *";
			break;
		case vk_divide:
			_string_key = "Num /";
			break;
		case vk_decimal:
			_string_key = "Num .";
			break;
			
		case vk_backspace:
			_string_key = "Back";
			break;
		case vk_delete:
			_string_key = "Del";
			break;
		case vk_insert:
			_string_key = "Ins";
			break;	
		case vk_home:
			_string_key = "Home";
			break;
		case vk_end:
			_string_key = "End";
			break;
		case vk_pagedown:
			_string_key = "Pg D.";
			break;
		case vk_pageup:
			_string_key = "Pg Up";
			break;
		
		default:
			_string_key = keyboard_lastchar;
			break;
	}
	if string_length(_string_key) < 2 {
		_string_key = " " + _string_key;
	}
	return _string_key;
}