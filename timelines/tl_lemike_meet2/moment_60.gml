obj_lemike_meet2.tl_speed = 0;
if !instance_exists(obj_interactive_box) {
	instance_create_depth(global.camera_x + 65, box_y_check(), obj_spell.depth - 1, obj_interactive_box);
}
if obj_lemike_cutscene2.read_option == 1 {
	obj_interactive_box.option1 = "* Who are\n  you?";
	if global.language == "rus" {
		obj_interactive_box.option1 = "* Кто ты?";
	}
	obj_interactive_box.dialogue_start1 = 17;
	obj_interactive_box.dialogue_end1 = 24;
}
else if obj_lemike_cutscene2.read_option == 2 {
	obj_interactive_box.option1 = "* Where\n  are we?";
	if global.language == "rus" {
		obj_interactive_box.option1 = "* Где мы?";
	}
	obj_interactive_box.dialogue_start1 = 5;
	obj_interactive_box.dialogue_end1 = 16;
}
obj_interactive_box.option2 = "";

obj_interactive_box.current_option = 1;
obj_interactive_box.cutscene_npc = obj_lemike_cutscene2;
obj_lemike_cutscene2.timeline_auto_position = 90;