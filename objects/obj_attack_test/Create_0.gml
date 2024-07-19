soul_start_x = 49; //координаты души по умолчанию
soul_start_y = 454;
new_border_left = 32; //начало рамки по x
border_right = x + 580;
border_width = 580; //ширина рамки
border_height = 130; //высота рамки

new_border_left = 32 + 225 - 50;
//y -= 20;
border_height+= 20;
new_border_width = border_height + 70;
instance_create_depth(soul_start_x, soul_start_y, depth, obj_soul_battle_test);
obj_soul_battle_test.x = new_border_left + new_border_width/2;
obj_soul_battle_test.y = y + border_height/2;
obj_soul_battle_test.dodging = true;

attack = bone_attack_1;
alarm[0] = 60;