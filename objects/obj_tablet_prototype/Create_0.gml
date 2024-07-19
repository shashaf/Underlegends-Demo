/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if global.language == "rus" {
	dialogue[0] = "* Это тестовая табличка.";
	dialogue[1] = "* Вы читаете текст на ней.";
	/*dialogue[2] = "* Never gonna give you up!~\n* Never gonna let you down!";
	dialogue[3] = "* Вау...~\n* Очень смешно.";
	dialogue[4] = "* Ок, ладно.";*/
	dialogue[2] = "* \"Вы знали, что можете\n  показать весь текст,~\n  нажав на X?\"";
	dialogue[3] = "* \"Попробуйте это с этим\n  более длинным, чем\n  необходимо сообщением.\"";
	dialogue[4] = "* \"Да, и клавиша Z тоже\n  работает так же!\"";
	dialogue_end = 4;
	if global.enough != 0 {
		dialogue[0] = "* Неважно.";
		dialogue_end = 0;
	}
} 
else {
	dialogue[0] = "* It's the test tablet.";
	dialogue[1] = "* You read the text on it.";
	dialogue[2] = "* Never gonna give you up!~\n* Never gonna let you down!";
	dialogue[3] = "* Wow...~\n* So funny.";
	dialogue[4] = "* Ok, fine.";
	dialogue[5] = "* You know you can show the\n  full message by pressing\n  the X key?";
	dialogue[6] = "* Try it with this extremely\n  longer than necessary\n  message.";
	dialogue[7] = "* Yeah, and the Z key also\n  works well!";
	dialogue_end = 7;
	if global.enough != 0 {
		dialogue[0] = "* It does not\n  matter.";
		dialogue_end = 0;
	}
}
//dialogue_end = array_length_1d(dialogue)- 1 ;

dialogue_length = string_length(dialogue[dialogue_current]);
