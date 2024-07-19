/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
item_id = 1;
switch (global.skill) {
	case 1:
		item_name = "Red ribbon";
		break;
	case 2:
		item_name = "Blue ribbon";
		break;
	case 3:
		item_name = "Pink ribbon";
		break;
	default:
		item_name = "Ribbon";
		break;
}
if global.language == "rus" {
	info_text[0] = "* Ваша Лента напоминает вам`n  о Доме.";
	info_text[1] = "* Нужно запастись Терпением,`n  чтобы вернуться.";
	text_end = 3;
	switch (global.skill) {
		case 1:
			item_name = "Красная лента";
			info_text[2] = "* Память о тёплых днях поможет`n  снизить Вашу боль.";
			info_text[3] = "* (ЗАЩИТА всегда повышена на 2.`n  В бою можно повысить её ещё`n  на 1 до конца хода.)";
			break;
		case 2:
			item_name = "Синяя лента";
			info_text[2] = "* В трудный момент эта лента`n  придаст Вам сил.";
			info_text[3] = "* (В бою нажмите C с НАВЫКОМ,`n  чтобы сделать все атаки`n  `bсиними `wна 3 секунды.)";
			break;
		case 3:
			item_name = "Роз. лента";
			info_text[2] = "* Что бы ни случилось,`n  оставайтесь хладнокровными,`n  и страх отступит.";
			info_text[3] = "* (В бою можно замедлить все`n  атаки до коцна хода.)";
			break;
		default:
			item_name = "Лента";
			break;
	}
}


