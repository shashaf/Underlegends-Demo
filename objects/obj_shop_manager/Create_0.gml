room_before_shop = rm_ruins_0_prototype;
image_speed = 0;
dialogue_x = 39;
dialogue_y = 260;
in_dialogue = false; //находится в диалоге

tried_to_sell = false; //уже был диалог об условиях продажи

know_about_discount = false; //уже был диалог о скидке
items_were_selled = false; //если купили хоть один предмет
difference = 0; //разница в стоимости между ценой без акции и с ней у купленных предметов

voice = snd_grandpa_semi_voice;
//global.language = "rus";

global.semi_topics[0] = false;
global.semi_topics[1] = false;
global.semi_topics[2] = false;
global.semi_topics[3] = false;

/*global.semi_topics[0] = true;
global.semi_topics[1] = true;
global.semi_topics[2] = true;
global.semi_topics[3] = true;*/

/*//global.items[2] = obj_empty_item;
global.items[0] = obj_ribbon;
global.items[1] = obj_ribbon;
global.items[2] = obj_ribbon;
global.items[3] = obj_ribbon;
global.items[4] = obj_bandanna;
global.items[5] = obj_bandanna;
global.items[6] = obj_empty_item;
global.items[7] = obj_empty_item;
//global.items[7] = obj_bandanna;*/

sell_list_1 = "";
sell_list_2 = "";
sell_items_count = 0;

if global.language == "rus" {
	currency = "М";
	exit_text = "Выход";
	if global.semi_topics[0] == false {
		topics[0] = "`yЧеловек";
	}
	else {
		topics[0] = "`wЧеловек";
	}
	topics[1] = "`wЗападн. Подземелье";
	topics[2] = "Брэд и Купер";
	topics[3] = "О тебе";
}
else {
	currency = "G";
	exit_text = "Exit";
	if global.semi_topics[0] == false {
		topics[0] = "`yHuman";
	}
	else {
		topics[0] = "`wHuman";
	}
	topics[1] = "`wWest Underground";
	topics[2] = "Brad and Cooper";
	topics[3] = "About yourself";
}

for (var _i = 0; _i < 8; _i++) {
	instance_create_depth(320, 240, 0, global.items[_i]);
	if global.items[_i] = obj_empty_item {
		break;
	}
	if global.items[_i].boned == false {
		sell_items_count++;
		var _cost = string(global.items[_i].sell_cost);
		if (global.items[_i].sell_cost < 10) {
			_cost = " " + _cost;
		}
		if _i < 4 {	
			//sell_list_1 += string(global.items[_i].sell_cost) + currency + " - " + global.items[_i].item_name + "`n";
			sell_list_1 += _cost + currency + " - " + global.items[_i].item_name + "`n";
		}
		else {
			//sell_list_2 += string(global.items[_i].sell_cost) + currency + " - " + global.items[_i].item_name + "`n";
			sell_list_2 += _cost + currency + " - " + global.items[_i].item_name + "`n";
		}
	}
}
if sell_items_count < 4 {
	repeat (4 - sell_items_count) {
		sell_list_1 += "`n";
	}
}
else if sell_items_count < 8 {
	repeat (sell_items_count - 4) {
		sell_list_2 += "`n";
	}
}


items[0] = obj_bone_knife;
items[1] = obj_bone_bracelet;
items[2] = obj_bisicle;
items[3] = obj_spaghetti;
items_list = "";
topics_list = "";

for (var _i = 0; _i < 4; _i++) {
	instance_create_depth(0, 0, 0, items[_i]);
	items_list += string(items[_i].buy_cost) + currency + " - " + items[_i].item_name + "`n";
	topics_list += topics[_i] + "`n";
}
items_list += exit_text;
topics_list += exit_text;
if global.language == "rus" {
	dialogue = "* Приветствую, путник.`n* Чем могу помочь?";
	second_dialogue = "Что-то ещё?";
	//currency = "М";
	//items_list += "Выход";
	//topics_list += "Выход";

	if sell_list_2 != "" {
		sell_list_1 += "Выход         Стр. 1/2";
		sell_list_2 += "Выход         Стр. 2/2";
	}
	else {
		sell_list_1 += "Выход";
	}
}
else {
	dialogue = "* Hello, traveller.`n* How can I help you?";
	second_dialogue = "Anything else?";
	//currency = "G";
	//items_list += "Exit";
	//topics_list += "Exit";

	if sell_list_2 != "" {
		sell_list_1 += "Exit         Page 1/2";
		sell_list_2 += "Exit         Page 2/2";
	}
	else {
		sell_list_1 += "Exit";
	}
}



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

state = "menu";
current_button = 1;
current_item = 1;
current_topic = 1;
function check_button(current_button) {
	obj_shop_soul_patience.x = 449;
	obj_shop_soul_patience.y = 266 + (current_button - 1) * 40;
}
function check_option(current_option) {
	obj_shop_soul_patience.x = 39;
	obj_shop_soul_patience.y = 266 + (current_option - 1) * text_height;
}

function fill_sell_lists() {
	sell_list_1 = "";
	sell_list_2 = "";
	sell_items_count = 0;
	
	for (var _i = 0; _i < 8; _i++) {
		if global.items[_i] = obj_empty_item {
			break;
		}
		if global.items[_i].boned == false {
			sell_items_count++;
			var _cost = string(global.items[_i].sell_cost);
				if (global.items[_i].sell_cost < 10) {
					_cost = " " + _cost;
				}
			if _i < 4 {
				//sell_list_1 += string(global.items[_i].sell_cost) + currency + " - " + global.items[_i].item_name + "`n";
				sell_list_1 += _cost + currency + " - " + global.items[_i].item_name + "`n";
			}
			else {
				//sell_list_2 += string(global.items[_i].sell_cost) + currency + " - " + global.items[_i].item_name + "`n";
				sell_list_2 += _cost + currency + " - " + global.items[_i].item_name + "`n";
			}
		}
	}
	if sell_items_count < 5 {
		repeat (4 - sell_items_count) {
			sell_list_1 += "`n";
		}
	}
	else if sell_items_count < 8 {
		repeat (8 - sell_items_count) {
			sell_list_2 += "`n";
		}
	}
	
	if global.language == "rus" {
		if sell_list_2 != "" {
			sell_list_1 += "Выход         Стр. 1/2";
			sell_list_2 += "Выход         Стр. 2/2";
		}
		else {
			sell_list_1 += "Выход";
		}
	}
	else {
		if sell_list_2 != "" {
			sell_list_1 += "Exit         Page 1/2";
			sell_list_2 += "Exit         Page 2/2";
		}
		else {
			sell_list_1 += "Exit";
		}
	}
}

function buy_item(item) {
	var _cost = item.buy_cost;
	if know_about_discount == true {
		_cost = item.discount_cost;
	}
	with (obj_shop_menu) {
		//if item.buy_cost > gold {
		if _cost > global.player_gold {
			dialogue = no_money_dialogue;
			characters = 0; //количество символов на экране
			text_to_draw = ""; //рисуемый текст
			increase = 1; //скорость появления текста
			other.state = "buy";
			other.check_option(other.current_item);
			audio_play_sound(snd_deal_failed, 0, 0);
			//alarm[2] = 30;
		}
		else if items_count == 8 {
			dialogue = no_space_dialogue;
			characters = 0; //количество символов на экране
			text_to_draw = ""; //рисуемый текст
			increase = 1; //скорость появления текста
			//alarm[2] = 30;
			other.state = "buy";
			other.check_option(other.current_item);
			audio_play_sound(snd_deal_failed, 0, 0);
		}
		else {
			other.items_were_selled = true;
			other.difference += _cost - item.discount_cost;
			//gold -= item.buy_cost;
			global.player_gold -= _cost;
			global.items[items_count] = item;
			items_count++;
			inv_space = string(items_count) + "/8";
			other.fill_sell_lists();
			audio_play_sound(snd_money, 0, 0);
		}
	}
}
	
function check_discount() {
	var _discount = true;
	for (var _i = 0; _i < 4; _i++) {
		if global.semi_topics[_i] == false {
			_discount = false;
			break;
		}
	}
	if _discount == true and know_about_discount == false { //если скидка присутствует
		//создаём диалог бокс с текстом скидки
		know_about_discount = true;
		instance_create_depth(0, 240, depth - 100, obj_shop_dialogue_box);
		with (obj_shop_dialogue_box) {
			dialogue_end = discount_dialogue_end;
			dialogue = discount_dialogue[dialogue_current];
		}
		items_list = "";
		for (var _i = 0; _i < 4; _i++) {	
			items_list += string(items[_i].discount_cost) + currency + " - " + items[_i].item_name + "`n";
		}
		items_list += exit_text;
		dialogue = items_list;
		text_to_draw = items_list;
		characters = string_length(text_to_draw);
		text_length = string_length(text_to_draw);
	}
	else {
		instance_create_depth(421, 240, obj_shop_menu.depth + 2, obj_shop_item_info);
	}
}

function sell_item(item_index) {
	audio_play_sound(snd_money, 0, 0);
	with (obj_shop_menu) {
		global.player_gold += global.items[item_index].sell_cost;

		audio_play_sound(snd_item_drop, 10, 0);
		if item_index == 7 { //если мы выбросили 8 предмет
			global.item_IDs[item_index] = 0;
			global.items[item_index] = obj_empty_item; //то 8 предмет заменяем на пустой
		}
		else { //если мы выбросили предмет под номером от 1 до 7
			for (var _i = item_index; _i <= 6; _i++) { //проходим цикл от выбранного предмета до конца инвентаря
				if global.items[_i+1].item_name != "" { //если следующий предмет не пустой
					global.item_IDs[_i] = global.item_IDs[_i+1];
					global.items[_i] = global.items[_i+1]; //сдвигаем предметы на 1
				}
				else { //если пустой, то тоже сдвигаем, не очень помню почему
					global.item_IDs[_i] = global.item_IDs[_i+1];
					global.items[_i] = global.items[_i+1];
					//break;
				}
				if _i == 6 { //последний предмет делаем пустым
					global.item_IDs[_i+1] = 0;
					global.items[_i+1] = obj_empty_item;
				}
			} 
		}
		items_count--;
		inv_space = string(items_count) + "/8";
	}
	fill_sell_lists();
	dialogue = sell_list_1;
	text_to_draw = sell_list_1;
	if sell_items_count > 0 {
		state = "sell";
		current_item = 1;
		check_option(current_item);
	}
	else {
		state = "menu";
		dialogue = second_dialogue;
		characters = 0;
		text_to_draw = "";
		check_button(current_button);
	}
}

instance_create_depth(422, 240, depth - 10, obj_shop_menu);
instance_create_depth(448, 266, depth - 15, obj_shop_soul_patience);
