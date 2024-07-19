/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_menu_soul) {
	var cell_number = obj_menu_soul.cell_selected;
}
box_y = box_y_check();

if enter_z_check() {
	audio_play_sound(snd_phone, 0, 0);
	instance_create_depth(global.camera_x + 65, global.camera_y+ box_y, -9999, obj_cell_action); //создаем действие с предметом
	obj_cell_action.contact = cell_number - 1;
	with (obj_cell_action) {
		get_contact_info(contact, room);
	}
	instance_destroy(obj_menu_soul);
	instance_destroy(obj_in_game_menu);
	instance_destroy(); //уничтожаем подменю телефона
}