if revolving == false {
	revolving = true;
	path_start(left_path, spd, path_action_stop, 0);
	if (position == 1) {
		position = 6;
	}
	else {
		position--;
	}
	switch (position) {
		case 1:
			left_path = rb_1_left;
			right_path = rb_1_right;
			break;
		case 2:
			left_path = rb_2_left;
			right_path = rb_2_right;
			break;
		case 3:
			left_path = rb_3_left;
			right_path = rb_3_right;
			break;
		case 4:
			left_path = rb_4_left;
			right_path = rb_4_right;
			break;
		case 5:
			left_path = rb_5_left;
			right_path = rb_5_right;
			break;
		case 6:
			left_path = rb_6_left;
			right_path = rb_6_right;
			break;
	}
}