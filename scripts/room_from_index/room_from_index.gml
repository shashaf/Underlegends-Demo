// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function room_from_index(_roomID) {
	var _rm_name;
	switch (_roomID) {
		case 1:
			//_rm_name = rm_ruins_0_prototype;
			_rm_name = rm_ruins_0;
			global.room_label = "Ruins - First";
			break;
		case 2:
			//_rm_name = rm_ruins_1_prototype;
			_rm_name = rm_ruins_1;
			global.room_label = "Ruins - Second";
			break;
		case 3:
			_rm_name = rm_ruins_2;
			global.room_label = "Ruins - Third";
			break;
		case 5:
			_rm_name = rm_ruins_4;
			global.room_label = "Ruins - Fourth";
			break;
		case 8:
			_rm_name = rm_ruins_7;
			global.room_label = "Ruins - Practice Room";
			break;
		case 9:
			_rm_name = rm_castle_1;
			global.room_label = "Castle - Entrance";
			break;
		case 24:
			_rm_name = rm_reject0;
			global.room_label = "???";
			break;
		case 25:
			_rm_name = rm_reject0;
			global.room_label = "Изм. Отвергнутых";
			break;
		case 26:
			_rm_name = rm_reject1;
			global.room_label = "Коридор шерифа";
			break;
		case 27:
			_rm_name = rm_reject2;
			global.room_label = "Коридор шерифа";
			break;
		default:
			_rm_name = rm_ruins_error;
			global.room_label = "???";
			break;
	}
	return _rm_name
}