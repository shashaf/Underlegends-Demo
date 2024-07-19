/// @description Действие 2
// You can write your code in this editor
if act2 == "* Duel" {
	act2_text = "* A repeated challenge to a`n  duel changed nothing. It seems`n  the only thing left to do is be patient.";
}
else {
	enemy_at = 11;
	act2_text = "* You praised Lemike's own`n  attacks. She grinned.`n*  ATTACK has not changed.";
}
if global.language == "rus" {
	if act2 == "* Дуэль" {
		act2_text = "* Повторный вызов на дуэль ничего`n  не изменил. Кажется, остаётся`n  только проявить терпение.";
	}
	else {
		enemy_at = 11;
		act2_text = "* Вы похвалили собственные`n  атаки Лемике. Она ухмыльнулась.`n* АТАКА не изменилась.";
	}
}
//obj_battleManager.alarm[2] = 150;