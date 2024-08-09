/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
dialogue[0] = "* Это паутина.";
dialogue[1] = "* И это...\n* Тоже паутина.";
dialogue[2] = "* Однако, это паутина.";
dialogue[3] = "* Удивительно - паутина!";
dialogue[4] = "* Паутина...";
dialogue[5] = "* Это правда паутина?";
dialogue[6] = "* Вы нашли 10М в паутине.";
dialogue_end = 0;
got_money = false;
dialogue_length = string_length(dialogue[dialogue_current]);
dialogue_start = 0;

web_checked = false;