/// @description Circle attack lv3

var _bullet_depth = obj_soul_battle.depth;
var _bullet_x = obj_battle_manager.x + 64;
var _bullet_y = obj_battle_manager.y + 7;
number_of_attacks++;
	var _orange = round(random_range(1, 24));
	//var _orange = 24;
	var _bullet_type = obj_tumbleweed_smallest_blue;
	for (var _i = 1; _i <= 24; _i++) {
		switch (_i) {
			case 1:
				_bullet_x = obj_battle_manager.x + 64;
				_bullet_y = obj_battle_manager.y + 7;
				break;
			case 2:
				_bullet_x = obj_battle_manager.x + 79;
				_bullet_y = obj_battle_manager.y + 10;
				break;
			case 3:
				_bullet_x = obj_battle_manager.x + 93;
				_bullet_y = obj_battle_manager.y + 15;
				break;
			case 4:
				_bullet_x = obj_battle_manager.x + 104;
				_bullet_y = obj_battle_manager.y + 25;
				break;
			case 5:
				_bullet_x = obj_battle_manager.x + 114;
				_bullet_y = obj_battle_manager.y + 36;
				break;
			case 6:
				_bullet_x = obj_battle_manager.x + 119;
				_bullet_y = obj_battle_manager.y + 50;
				break;
			case 7:
				_bullet_x = obj_battle_manager.x + 122;
				_bullet_y = obj_battle_manager.y + 65;
				break;
			case 8:
				_bullet_x = obj_battle_manager.x + 119;
				_bullet_y = obj_battle_manager.y + 80;
				break;
			case 9:
				_bullet_x = obj_battle_manager.x + 114;
				_bullet_y = obj_battle_manager.y + 94;
				break;
			case 10:
				_bullet_x = obj_battle_manager.x + 104;
				_bullet_y = obj_battle_manager.y + 105;
				break;
			case 11:
				_bullet_x = obj_battle_manager.x + 93;
				_bullet_y = obj_battle_manager.y + 114;
				break;
			case 12:
				_bullet_x = obj_battle_manager.x + 79;
				_bullet_y = obj_battle_manager.y + 119;
				break;
			case 13:
				_bullet_x = obj_battle_manager.x + 64;
				_bullet_y = obj_battle_manager.y + 122;
				break;
			case 14:
				_bullet_x = obj_battle_manager.x + 49;
				_bullet_y = obj_battle_manager.y + 119;
				break;
			case 15:
				_bullet_x = obj_battle_manager.x + 35;
				_bullet_y = obj_battle_manager.y + 114;
				break;
			case 16:
				_bullet_x = obj_battle_manager.x + 23;
				_bullet_y = obj_battle_manager.y + 105;
				break;
			case 17:
				_bullet_x = obj_battle_manager.x + 15;
				_bullet_y = obj_battle_manager.y + 94;
				break;
			case 18:
				_bullet_x = obj_battle_manager.x + 10;
				_bullet_y = obj_battle_manager.y + 80;
				break;
			case 19:
				_bullet_x = obj_battle_manager.x + 7;
				_bullet_y = obj_battle_manager.y + 65;
				break;
			case 20:
				_bullet_x = obj_battle_manager.x + 10;
				_bullet_y = obj_battle_manager.y + 50;
				break;
			case 21:
				_bullet_x = obj_battle_manager.x + 15;
				_bullet_y = obj_battle_manager.y + 36;
				break;
			case 22:
				_bullet_x = obj_battle_manager.x + 25;
				_bullet_y = obj_battle_manager.y + 25;
				break;
			case 23:
				_bullet_x = obj_battle_manager.x + 35;
				_bullet_y = obj_battle_manager.y + 15;
				break;
			case 24:
				_bullet_x = obj_battle_manager.x + 49;
				_bullet_y = obj_battle_manager.y + 10;
				break;
	
		}
	
	if (_i == _orange) or (_orange == 1 and (_i == 24 or _i == 23)) or (_orange == 2) and (_i == 24) or ((_orange == 24) and (_i == 1 or _i == 2)) or ((_orange == 23) and (_i == 1)) { 	
		_bullet_type = obj_tumbleweed_smallest_orange;
	}
	else if (_i == (_orange - 1)) or (_i == (_orange + 1)) or (_i == (_orange - 2)) or (_i == (_orange + 2)) {
		_bullet_type = obj_tumbleweed_smallest_orange;
	}
	else {
		_bullet_type = obj_tumbleweed_smallest_blue;
	}
	instance_create_depth(_bullet_x, _bullet_y, _bullet_depth, _bullet_type);
	if number_of_attacks < 3 {
		alarm[2] = 30;
	}
}





