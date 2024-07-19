//изменение размеров рамки
border_right = x + border_width;
if border_width > new_border_width { //сужение рамки справа
	if (abs(border_width - new_border_width) > 28) {
		border_width -= 40;
		if instance_exists(obj_soul_battle) {
			if ((obj_soul_battle.x+8) > (x + border_width - 4) and battle_state == "dodging")
				obj_soul_battle.x-=20; //сдвиг души влево при необходимости
		}
	}
	else {
		border_width = new_border_width;
		if instance_exists(obj_soul_battle) {
			if ((obj_soul_battle.x+8) > (x + border_width - 4) and battle_state == "dodging")
				obj_soul_battle.x = x + border_width - 4 - 8; //сдвиг души в правый край при необходимости
		}
	}
	if x < new_border_left { //сужение рамки слева
		if (abs(x - new_border_left) > 28) {
			x += 20;
			if instance_exists(obj_soul_battle) {
				if ((obj_soul_battle.x-8) < (x + 4) and battle_state == "dodging") //сдвиг души вправо при необходимости
					obj_soul_battle.x+=20;
			}
		}
		else {
			x = new_border_left;
			if instance_exists(obj_soul_battle) {
				if ((obj_soul_battle.x-8) < (x + 4) and battle_state == "dodging")
					obj_soul_battle.x = x + 4 + 8; //сдвиг души в левый край при необходимости
			}
		}
	}
}


if border_width < new_border_width { //расширение рамки вправо
	if (abs(border_width - new_border_width) > 28) {
		border_width += 40;
		if instance_exists(obj_soul_battle) {
			if ((obj_soul_battle.x-8) < (x + 4) and battle_state == "dodging") //сдвиг души вправо при необходимости
				obj_soul_battle.x+=20;
		}
	}
	else {
		border_width = new_border_width;
		if instance_exists(obj_soul_battle) {
			if ((obj_soul_battle.x-8) < (x + 4) and battle_state == "dodging")
				obj_soul_battle.x = x + 4 + 8; //сдвиг души в левый край при необходимости
		}
	}
	if x > new_border_left { //расширение рамки влево
		if (abs(x - new_border_left) > 28) {
			x -= 20;
			if instance_exists(obj_soul_battle) {
				if ((obj_soul_battle.x+8) > (x + border_width - 4) and battle_state == "dodging")
					obj_soul_battle.x-=20; //сдвиг души влево при необходимости
			}
		}
		else {
			x = new_border_left;
			if instance_exists(obj_soul_battle) {
				if ((obj_soul_battle.x+8) > (x + border_width - 4) and battle_state == "dodging")
					obj_soul_battle.x = x + border_width - 4 - 8; //сдвиг души в правый край при необходимости
			}
		}
	}
}