image_angle += 10;
if attack == lemike_circle_attack1 or attack == lemike_circle_attack2 or attack == lemike_circle_attack3 {
	pause_steps++;
	if (distance_to_point(center_x, center_y) > 0) {
		if pause_steps > 10 {
				move_towards_point(center_x, center_y, 3);
				x = round(x);
				y = round(y);
		}
	}
	else {
		instance_destroy()
	}
}