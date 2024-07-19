/// @description Отображение без аватара
// You can write your code in this editor 
if instance_exists(obj_dialogue_avatar) {
	instance_destroy(obj_dialogue_avatar)
}
text_x = 80*2;
sprite_index = sprite_without_avatar;


