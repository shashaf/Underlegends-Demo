event_inherited()
if transition == true {
	image_alpha -= 0.05;
	if image_alpha == 0 {
		transition = false;
		image_index ++;
	}
}

if transition == false && image_alpha < 1 {
	image_alpha += 0.1
	
	if image_alpha == 0.9 && instance_exists(obj_textbox_intro) {
		obj_textbox_intro.next_m = true;
	}
}

if image_index == 10 {
	instance_change(obj_storypan_mine, true);
}

