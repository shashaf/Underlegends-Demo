/// @description Режим разработчика
// You can write your code in this editor
global.debug = !global.debug;
if instance_exists(obj_patience) {
	if global.debug == true	and obj_patience.in_menu == false and obj_patience.reading == false 
	and obj_patience.in_cutscene == false
		obj_patience.can_move = true;
}