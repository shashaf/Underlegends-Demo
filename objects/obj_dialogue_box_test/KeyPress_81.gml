/// @description Предыдущая реплика
// You can write your code in this editor
if dialogue_current > dialogue_start {
	dialogue_current--;
}
else {
	dialogue_current = dialogue_end;
}
dialogue_length = string_length(dialogue[dialogue_current]);
dialogue_draw = string_copy(dialogue[dialogue_current], 0, dialogue_length);




