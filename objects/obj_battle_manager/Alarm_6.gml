/// @description Диалог после использования Спагетти в туториале или после использования Навыка

battle_state = "dodging";
new_border_left = 32 + 225 - 25;
new_border_width = border_height + 50;
obj_soul_battle.dodging = true;
obj_soul_battle.x = new_border_left + new_border_width/2;
obj_soul_battle.y = y + border_height/2;
enemies[0].alarm[7] = 1;
