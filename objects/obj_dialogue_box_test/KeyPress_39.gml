/// @description Отображение с аватаром
// You can write your code in this editor 

if !instance_exists(obj_dialogue_avatar) {
	instance_create_depth(90*2, y + 25*2, 0, obj_dialogue_avatar)
	obj_dialogue_avatar.sprite_index = avatar_sprite;
	obj_dialogue_avatar.image_xscale = 2;
	obj_dialogue_avatar.image_yscale = 2;
}
text_x = 170*2;
sprite_index = sprite_with_avatar;