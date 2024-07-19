// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_string_day_of_week(_weekday){
	var _string_day = "";
	if global.language == "rus" {
	switch(_weekday) {
		case 1: 
			_string_day = "понедельник";
			break;
		case 2: 
			_string_day = "вторник";
			break;
		case 3: 
			_string_day = "среда";
			break;
		case 4: 
			_string_day = "четверг";
			break;
		case 5: 
			_string_day = "пятница";
			break;
		case 6: 
			_string_day = "суббота";
			break;
		case 7: 
			_string_day = "воскресенье";
			break;
		default: 
			_string_day = "воскресенье";
			break;
	}
	}
	else {
		switch(_weekday) {
			case 1: 
				_string_day = "Monday";
				break;
			case 2: 
				_string_day = "Tuesday";
				break;
			case 3: 
				_string_day = "Wednesday";
				break;
			case 4: 
				_string_day = "Thursday";
				break;
			case 5: 
				_string_day = "Friday";
				break;
			case 6: 
				_string_day = "Saturday";
				break;
			case 7: 
				_string_day = "Sunday";
				break;
			default: 
				_string_day = "Sunday";
					break;
		}
	}
	return _string_day;
}