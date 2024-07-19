// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function lemike_reload_revolver(_difficulty) {
	randomize();
	obj_soul_battle.sprite_index = spr_soul_battle_patience;
	
	var _bullet_x = obj_battle_manager.x + 65;
	var _bullet_y = obj_battle_manager.y + 24;
	var _bullet_depth = obj_soul_battle.depth;
	var _bullet_type = obj_orange_revolver_bullet;
	var _bullet_left_path = rb_1_left;
	var _bullet_right_path = rb_1_right;
	var _bullet = instance_create_depth(_bullet_x, _bullet_y, _bullet_depth, _bullet_type);
	//instance_create_depth(obj_soul_battle.x, obj_soul_battle.y, _bullet_depth+2, obj_soulJail);
	_bullet.left_path = _bullet_left_path;
	_bullet.right_path = _bullet_right_path;
	_bullet.position = 1;
	for (var _i = 2; _i <= 6; _i++) {
		switch (_i) {
			case 2:
				_bullet_x = obj_battle_manager.x + 100;
				_bullet_y = obj_battle_manager.y + 44;
				_bullet_left_path = rb_2_left;
				_bullet_right_path = rb_2_right;
				if _difficulty == 1 {
					_bullet_type = obj_blue_revolver_bullet;
				}
				else if _difficulty == 2 {
					_bullet_type = choose(obj_blue_revolver_bullet, obj_orange_revolver_bullet);
				}
				else if _difficulty == 3 {
					_bullet_type = obj_orange_revolver_bullet;
				}
				break;
			case 3:
				_bullet_x = obj_battle_manager.x + 100;
				_bullet_y = obj_battle_manager.y + 85;
				_bullet_left_path = rb_3_left;
				_bullet_right_path = rb_3_right;
				if _difficulty == 1 {
					_bullet_type = obj_orange_revolver_bullet;
				}
				else if _difficulty == 2 {
					_bullet_type = choose(obj_blue_revolver_bullet, obj_orange_revolver_bullet);
				}
				else if _difficulty == 3 {
					_bullet_type = obj_orange_revolver_bullet;
				}
				break;
			case 4:
				_bullet_x = obj_battle_manager.x + 65;
				_bullet_y = obj_battle_manager.y + 105;
				_bullet_left_path = rb_4_left;
				_bullet_right_path = rb_4_right;
				_bullet_type = obj_blue_revolver_bullet;
				break;
			case 5:
				_bullet_x = obj_battle_manager.x + 29;
				_bullet_y = obj_battle_manager.y + 85;
				_bullet_left_path = rb_5_left;
				_bullet_right_path = rb_5_right;
				if _difficulty == 1 {
					_bullet_type = obj_orange_revolver_bullet;
				}
				else if _difficulty == 2 {
					if obj_revolver.blue_bullets >= 3 {
						_bullet_type = obj_orange_revolver_bullet;
					}
					else {
						_bullet_type = obj_blue_revolver_bullet;
					}
				}
				else if _difficulty == 3 {
					_bullet_type = obj_orange_revolver_bullet;
				}
				break;
			case 6:
				_bullet_x = obj_battle_manager.x + 29;
				_bullet_y = obj_battle_manager.y + 44;
				_bullet_left_path = rb_6_left;
				_bullet_right_path = rb_6_right;
				if _difficulty == 1 {
					_bullet_type = obj_blue_revolver_bullet;
				}
				else if _difficulty == 2 {
					if obj_revolver.blue_bullets >= 3 {
						_bullet_type = obj_orange_revolver_bullet;
					}
					else {
						_bullet_type = obj_blue_revolver_bullet;
					}
				}
				else if _difficulty == 3 {
					_bullet_type = obj_orange_revolver_bullet;
				}
				break;
		}
		
		
		if _bullet_type == obj_blue_revolver_bullet {
			obj_revolver.blue_bullets++;
		} 
		_bullet = instance_create_depth(_bullet_x, _bullet_y, _bullet_depth, _bullet_type);
		_bullet.left_path = _bullet_left_path;
		_bullet.right_path = _bullet_right_path;
		_bullet.position = _i;
	}
	
	
}