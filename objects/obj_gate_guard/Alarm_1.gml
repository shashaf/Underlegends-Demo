/// @description Действие 2
// You can write your code in this editor
/*if act2 == "* Duel" {
	act2_text = "* You challenged her to a`n  duel again but it didn't`n  changed anything.";
}
else {
	enemy_at = 11;
	act2_text = "* You praised Lemike's`n  own attacks. She smirked.`n* Her ATTACK hasn't changed.";
}
if global.language == "rus" {
	if act2 == "* Дуэль" {
		act2_text = "* Повторный вызов на дуэль ничего`n  не изменил. Кажется, остаётся`n  только проявить терпение.";
	}
	else {
		enemy_at = 11;
		act2_text = "* Вы похвалили собственные`n  атаки Лемике. Она ухмыльнулась.`n* АТАКА не изменилась.";
	}
}*/
if act_count == 0 {
	dialogue_current = 14;
	dialogue_end = 18;
}
else if act_count == 1 {
	dialogue_current = 35;
	dialogue_end = 39;
}
else {
	dialogue_current = 35;
	dialogue_end = 40;
}
act_count++;
//obj_battleManager.alarm[2] = 150;