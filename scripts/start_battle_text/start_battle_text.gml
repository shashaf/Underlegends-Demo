// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function start_battle_text(_battleID){
	var _text = "";
	if global.language == "rus" {
		switch(_battleID) {
			case -1:
				_text = "* достаточно.";
				break;
			case 0:
				_text = "* Стражник хочет провести`n  тренировку.";
				break;
			case 1:
				_text = "* Белый фроггит подпрыгнул`n  к Вам!";
				break;
			case 2:
				_text = "* Жёлтый фроггит подпрыгнул`n  к Вам!";
				break;
			case 3:
				_text = "* Зелёный фроггит подпрыгнул`n  к Вам!";
				break;
			case 4:
				_text = "* Пара фроггитов подпрыгнула`n  к Вам!";
				break;
			case 5:
				_text = "* Пара фроггитов подпрыгнула`n  к Вам!";
				break;
			case 6:
				_text = "* Пара фроггитов подпрыгнула`n  к Вам!";
				break;
			case 7:
				_text = "* Вау! Команда фроггитов!";
				break;
			case 24:
				if global.deaths == 0 {
					_text = "* Шериф в городе.";
				}
				else {
					_text = "* Лемике готова к фазе 2!";
				}
				break;
			default:
				_text = "* Вау! Команда фроггитов!";
				break;
		}
	}
	else {
		switch(_battleID) {
			case -1:
				_text = "* enough.";
				break;
			case 0:
				_text = "* The Guard wants to practice`n  fighting.";
				break;
			case 1:
				_text = "* White froggit hopped close!";
				break;
			case 2:
				_text = "* Yellow froggit hopped close!";
				break;
			case 3:
				_text = "* Green froggit hopped close!";
				break;
			case 4:
				_text = "* A pair of Froggits hop towards`n  you.";
				break;
			case 5:
				_text = "* A pair of Froggits hop towards`n  you.";
				break;
			case 6:
				_text = "* A pair of Froggits hop towards`n  you.";
				break;
			case 7:
				_text = "* Wow! Full frog party!";
				break;
			case 24:
				if global.deaths == 0 {
					_text = "* Sheriff in town.";
				}
				else {
					_text = "* Lemike is ready for phase 2!";
				}
				break;
			default:
				_text = "* Wow! Full party!";
				break;
		}
	}
	return _text;
}