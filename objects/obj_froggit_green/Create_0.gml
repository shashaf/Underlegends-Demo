/// @description Insert description here
// You can write your code in this editor
event_inherited();

enemy_max_hp = 30;
enemy_current_hp = enemy_max_hp;
enemy_at = 8;
enemy_check_df = 3; //было 5
enemy_real_df = 3;
enemy_exp = 3;
enemy_gold = 2;
can_be_spared = false;
calm_sprite = spr_froggit_head;
talking_sprite = spr_froggit_head;
if global.language == "rus" {
	enemy_name = "Зелёный фроггит";
	act2 = "* Доверять";
	act3 = "* Перекрасить";
	act4 = "";
	check_text = "* " + enemy_name + ". ATK - " + string(enemy_at) + " ЗАЩ - " + string(enemy_check_df)+ ".`n* На самом деле он белый, но у`n  него `gзелёное `wпятно на спине.";
	act2_text ="* Вы сказали фроггиту, что`n  зелёный подходит ему. Он ценит,`n  что вы уважаете его выбор.";
	act3_text ="* Вы перекрасили фроггита.`n* Теперь он белый.";
	dialogue_text[0] = "Пока кто-то `gзелёный`b,`nты не можешь`n`rсбежать.";
	dialogue_text[1] = "Если ты `rсбежишь`b, ты`nне получишь `yМ`b, но`nполучишь `rОП`b, если`nзаработал их.";
	dialogue_text[2] = "`gКва`b, `gква`b.";
}
else {
	enemy_name = "Green froggit";
	act2 = "* Trust";
	act3 = "* Recolor";
	act4 = "";
	check_text = "* " + enemy_name + ". ATK - " + string(enemy_at) + " DEF - " + string(enemy_check_df) + ".`n* It is actually white with a`n  `ggreen `wspot on its back.";
	act2_text ="* You told froggit that green`n  suits it. It appreciates that`n  you respect its choice.";
	act3_text ="* You have recolored the froggit.`n* It is white now.";
	dialogue_text[0] = "While someone is`n`ggreen `byou can't`n`rescape.";
	dialogue_text[1] = "When you `rflee`b, you`ndon't get `yG`b, but`nyou get `rEXP`b, if`nyou've earned some.";
	dialogue_text[2] = "`gRibbit`b, `gribbit`b.";
}
