if shaking == true {
	if (timer < 60) {
		timer++;
		shake_x *= 0.9;
		shake_y *= 0.9;
		var _ran_x = random_range(-shake_x, shake_x);
		var _ran_y = random_range(-shake_y, shake_y);
		x = x + _ran_x;
		y = y + _ran_y;
	}
	else {
		x = x_before_shaking;
		y = y_before_shaking;
		shaking = false;
		timer = 0;
		shake_x = 3;
		shake_y = 1;
		obj_battle_manager.alarm[2] = 1;
	}
}