event_inherited();
if (global.enough != 0 or global.letter == "z") and dialogue_current == dialogue_end {
	if enter_z_check() {
		alarm[2] = 1;
	}
}