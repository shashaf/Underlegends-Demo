/// @description Insert description here
// You can write your code in this editor
if audio_is_playing(mus_remix) {
	broken = true;
	if global.language == "rus" {
		dialogue[0] = "* Телефон больше не работает."
	}
	else {
		dialogue[0] = "* The phone doesn't work\n  anymore."
	}
	dialogue_end = 0;
	dialogue_length = string_length(dialogue[dialogue_current]);
	dialogue_voice = snd_text2;
}
audio_sound_gain(mus_remix, 0.5, 600);



