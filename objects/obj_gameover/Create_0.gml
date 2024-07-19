instance_destroy(obj_soul_battle);
audio_sound_gain(mus_gameover, 1, 1);
audio_play_sound(mus_gameover, 0, 0);
image_alpha = 0;
//alarm[0] = 90;
alarm[3] = 1;
if global.language == "rus" {
	messages[0] = "Вау! Вы даже решили\nпротестировать гейм овер...";
	messages[1] = "Спасибо большое, надеюсь,\nон работает как надо!";
	messages[2] = "Уверен, что твой скилл\nвысок, и эта смерть намеренная.";
	messages[3] = "Сейчас будет загрузка, тебе\nбольше не нужно умирать.";
}
else {
	messages[0] = "Wow! You even decided\nto test the Game Over...";
	messages[1] = "Thank you very much,\nI hope it works well!";
	messages[2] = "I'm sure you're quite\nskilled and died on purpose.";
	messages[3] = "Now there will be a loading,\nyou don't have to die anymore.";
}
message_current = -1;
message_end = 3;
voice = snd_text;

if instance_exists(obj_lemike) {
	if global.language == "rus" {
		messages[0] = "Ха, видишь! Я сильнее тебя!";
		messages[1] = "Может быть, эта победа\nпозволит мне вернуться...";
		messages[2] = "А если нет, буду рада\nпобедить тебя ещё раз.";
		messages[3] = "Приходи,если тебе хватит\nтерпения.";
		voice = snd_lemike_voice;
	}
}

can_draw = false;
characters = 0;
text_to_draw = "";
current_text = messages[0];
increase = 0.5;

next_message = false;

can_draw = false;
characters = 0;
text_to_draw = "";
current_text = messages[0];
increase = 0.5;
