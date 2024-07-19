gold_x = 459;
gold_y = 420;
//gold = global.player_gold;

inv_space_x = 559;

items_count = 8;
for (var _i = 0; _i < 8; _i++) {
	if (global.items[_i] == obj_empty_item) {
		items_count = _i;
		break;
	}
}
inv_space = string(items_count) + "/8";

buy_x = 479;
buy_y =  260;

dialogue_x = buy_x - 20;
voice = snd_grandpa_semi_voice;
if global.language == "rus" {
	buy_button = "Купить";
	sell_button = "Продать";
	talk_button = "Говорить";
	exit_button = "Уйти";
	//gold_string = string(gold) + "М";
	
	buy_dialogue = "Что вы`nхотите`nкупить?";
	sell_dialogue = "Что вы`nхотите`nпродать?";
	talk_dialogue = "Что вы`nхотите`nузнать?";
	no_money_dialogue = "Нужно`nбольше М.";
	no_space_dialogue = "Нет`nместа.";
}
else {
	buy_button = "Buy";
	sell_button = "Sell";
	talk_button = "Talk";
	exit_button = "Exit";
	//gold_string = string(gold) + "G";
	
	buy_dialogue = "What would`nyou like`nto buy?";
	sell_dialogue = "What would`nyou like`nto sell?";
	talk_dialogue = "What would`nyou like`nto know?";
	no_money_dialogue = "Need`nmore G.";
	no_space_dialogue = "You have`nno space.";
}
dialogue = buy_dialogue;
characters = 0; //количество символов на экране
text_to_draw = ""; //рисуемый текст
increase = 1; //скорость появления текста

//для покраса текста
text_length = string_length(dialogue);
text_height = 36;
symbols = 1;
width = 0
row = 0;
letter = 0;