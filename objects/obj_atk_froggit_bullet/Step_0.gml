/// @description Insert description here
// _you can write your code in this editor
/*var stop_xright = obj_battle_manager.x + obj_battle_manager.border_width - 4;
var stop_xleft = obj_battle_manager.x + 4;
var stop_ytop = obj_battle_manager.y + 4;
var stop_ybottom = obj_battle_manager.y + obj_battle_manager.border_height - 4;*/

			var _x_add = lengthdir_x(spd, dir);
			var _y_add = lengthdir_y(spd, dir);
			
			//_next_y = y + _y_add;
				
			if _x_add > 0 { //движение вправо
				var _next_x = x + 4 + _x_add;
				var _stop_x = obj_battle_manager.x + obj_battle_manager.border_width - 4;
				if (_next_x < _stop_x) {
					x = x + _x_add;
				}
				else if (_next_x >= _stop_x) {
					while ((x + 4) != _stop_x)
						x = x + 1;
				}
			}
			else if _x_add < 0 { //движение влево
				var _next_x = x - 4 + _x_add;
				var _stop_x = obj_battle_manager.x + 4;
				if (_next_x > _stop_x) {
					x = x + _x_add;
				}
				else if (_next_x <= _stop_x) {
					while ((x - 4) != _stop_x)
						x = x - 1;
				}
			}
			if _y_add > 0 { //движение вниз
				var _next_y = y + 4 + _y_add;
				var _stop_y = obj_battle_manager.y + obj_battle_manager.border_height - 4;
				if (_next_y < _stop_y) {
					y = y + _y_add;
				}
				else if (_next_y >= _stop_y) {
					while ((y + 4) != _stop_y)
						y = y + 1;
				}
			}
			else if _y_add < 0 { //движение вверх
				var _next_y = y - 4 + _y_add;
				var _stop_y = obj_battle_manager.y + 4;
				if (_next_y > _stop_y) {
					y = y + _y_add;
				}
				else if (_next_y <= _stop_y) {
					while ((y - 4) != _stop_y)
						y = y - 1;
				}
			}

			x = round(x);
			y = round(y);
event_inherited();


