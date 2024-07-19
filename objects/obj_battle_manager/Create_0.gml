battle_state = "calm"; //состояние битвы
selected_button = 1; //выбранная из 4 кнопка
soul_start_x = 49; //координаты души по умолчанию
soul_start_y = 454;
new_border_left = 32; //начало рамки по x
border_right = x + 580;
border_width = 580; //ширина рамки
border_height = 130; //высота рамки
new_border_width = border_width; //изменение ширины рамки


hp_bar_width_red = global.player_max_hp; //хп бар красный
hp_bar_width_yellow = global.player_hp; //хп бар жёлтый
attack_power = global.player_attack + global.item_attack; //сила атаки
defence_power = global.player_defence + global.item_defence; //сила защиты

enemies[0] = noone; //враг №1
enemies[1] = noone; //враг №2
enemies[2] = noone; //враг №3
selected_enemy = 0; //выбранный в данный момент враг
earned_gold = 1; //количество денег, которое получаешь в случае победы
earned_exp = 0; //количество опыта, которое получаешь в случае победы
accuracy = 1; //точность попадания
damage = "MISS"; //урон
//if global.language == "rus" {
	//damage = "МИМО";
//}
spawn_enemies(obj_patience.battle_type); //расстановка врагов
attack_type = noone;
attack_time = 150;
previous_attack = froggit_attack1;

selected_act = 0;

selected_item = 0; //выбранный предмет
item_page = 1; //страница с предметами
item_used = false;

spare = true; //в данный момент выбрана spare или flee
can_spare = false; //можно ли пощадить врага
can_flee = true; //можно ли сбежать из боя
flee_text = "* Fleeing...";

switch (global.skill) {
	case 1:
		patience_text = "* You remain patient.`n* Your DEFENCE has increased`n  for this turn.";
		break;
	case 2:
		patience_text = "* You remain patient.`n* Your DEFENCE has increased`n  for this turn.";
		break;
	case 3:
		patience_text = "* You remain patient.`n* Your DEFENCE has increased`n  for this turn.";
		break;
}


if global.language == "rus" {
	flee_text = "* Сбегаем...";
	damage = "МИМО";
	switch (global.skill) {
		case 1:
			patience_text = "* Вы сохраняете терпение.`n* Ваша ЗАЩИТА увеличилась`n  на этом ходу.";
			break;
		case 2:
			patience_text = "* Вы сохраняете терпение.`n* Нажмите C чтобы сделать`n  все атаки `bсиними `wна 3 секунды.";
			break;
		case 3:
			patience_text = "* Вы сохраняете терпение.`n* Все атаки будут медленнее`n  на этом ходу.";
			break;
	}
}

//отрисовка
current_text = start_battle_text(obj_patience.battle_type); //текущий и стартовый текст
characters = 0; //количество символов на экране
text_to_draw = ""; //рисуемый текст
increase = 1; //скорость появления текста

//для покраса текста
text_length = string_length(current_text);
//text_height = string_height(current_text) + 5;
text_height = 35;
symbols = 1;
width = 0
row = 0;
letter = 0;

//флаги
patience = false;
pause = false
can_use_skill = true;
has_blue_skill = false; //синий скилл накоплен
blue_skill = false; //синий скилл активирован
purple_skill = false; //фиолетовый скилл накоплен

turn = 1;
if instance_exists(obj_lemike) {
	obj_lemike.dialogue_current = turn - 1;
	if (global.deaths > 0 and enemies[0] = obj_lemike) {
		turn = 16;
	}
}
orange = 1;
text_skipped = false;

if obj_patience.battle_type == 0 {
	battle_state = "dodging";
	can_use_skill = false;
	obj_soul_battle.dodging = true;
	new_border_left = 32 + 225 - 25;
	new_border_width = border_height + 50;
	enemies[0].alarm[7] = 60;
}
tutorial_state = "Act";