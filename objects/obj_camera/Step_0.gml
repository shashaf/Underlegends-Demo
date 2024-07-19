/// @description Insert description here
// You can write your code in this editor
if shaking == true {
	//if (timer < 60) {
		timer++;
		shake_x *= 0.9;
		shake_y *= 0.9;
		var _ran_x = random_range(-shake_x, shake_x);
		var _ran_y = random_range(-shake_y, shake_y);
		x = x + _ran_x;
		y = y + _ran_y;
	//}
	/*else {
		x = x_before_shaking;
		y = y_before_shaking;
		shaking = false;
		timer = 0;
		shake_x = 2;
		shake_y = 2;
	}*/
	if floor(shake_x) <= 0 {
		shake_x = 2;
	}
	if floor(shake_y) <= 0 {
		shake_y = 2;
	}
}
//camera_set_view_pos(view_camera[2], x - 320, y - 240); 
