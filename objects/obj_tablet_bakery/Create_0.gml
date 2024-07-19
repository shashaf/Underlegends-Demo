/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if global.language == "rus" {
	dialogue[0] = "* Это табличка.";
	dialogue[1] = "* Сложно разобрать текст,\n  но вы читаете часть.";
	dialogue[2] = "* ...распродажа!";
	dialogue[3] = "* ....паучья выпечка....";
	dialogue[4] = "* ........на востоке....";
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

web_ids[0] = undefined;
web_ids[1] = undefined;
web_ids[2] = undefined;
web_ids[3] = undefined;
web_ids[4] = undefined;
web_ids[5] = undefined;
web_ids[6] = undefined;
last_web = 6;
for (var _i = 0; _i < instance_count; _i++;){
	if instance_id[_i].object_index == obj_web {
		web_ids[last_web] = instance_id[_i];
		last_web--;
	}
}
last_web = 6;
