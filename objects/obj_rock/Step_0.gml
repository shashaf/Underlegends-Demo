if fall = true {
	if (global.rock_y - 10) > y {
		y+=10;
	}
	else if global.rock_y > y {
		y+= global.rock_y - y;		
	}
	else if y >= global.rock_y {
		fall = false;
	}
}