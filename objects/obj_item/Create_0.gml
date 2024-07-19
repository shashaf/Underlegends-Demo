inv_full = false; //заполнен ли инвентарь
spawned = false; //лежит ли предмет в комнате
item_index = -10; //индекс предмета
item_name = ""; //имя предмета
item_battle_name = ""; //имя предмета для битвы
text_to_draw = ""; //текст для вывода на экран
if global.language == "rus" {
	pick_up_text = "* Вы нашли " + item_name + "."; //текст для подбирания предмета
	inv_full_text = "* Ваш инвентарь заполнен."; //текст при заполненном инвентаре
	battle_use_text = "* Вы использовали " + item_name + ".";
}
else {
	pick_up_text = "* You found the " + item_name + "."; //текст для подбирания предмета
	inv_full_text = "* Your inventory is full."; //текст при заполненном инвентаре
	battle_use_text = "* You used the " + item_name + ".";
}


taken = false; //взят ли предмет
can_draw = false; //нужно ли выводить на экран текст

default_increase = 1; //скорость появления символов на экране
increase = default_increase;
characters = 0; //кол-во символов строки для отрисовки

text = 0; //флаг для проверки выводится ли буква на экран
box_y = 20; //координаты диалог-бокса

item_type = 0; // 0 - расходник, 1 - оружие, 2 - броня, 3 - прочее
weapon_attack = 0; //атака оружия
armor_defence = 0; //защита брони
item_heals = 0; //сколько лечит расходник
use_text = "";
info_text = "";
box_sprite = spr_dialogue_box2;
buy_cost = 9999; //цена для покупки
discount_cost = 999; //цена для покупки
sell_cost = 1; //цена для продажи
boned = false;
