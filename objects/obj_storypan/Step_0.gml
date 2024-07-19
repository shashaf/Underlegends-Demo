event_inherited();
if off == false && image_alpha < 1 {
	image_alpha += 0.1;
}

if off == true {
	image_alpha -= 0.01;
	if image_alpha <= 0 {
		instance_destroy();
	}
}