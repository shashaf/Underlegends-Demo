/// @description Insert description here
// You can write your code in this editor
if touched == true {
	timer++;
}
if timer == 2 {
	//touched = false;
	obj_patience.vspeed = 6;
	obj_patience.spinning = true;
	room_goto_dark(rm_ruins_6, 2);
}
