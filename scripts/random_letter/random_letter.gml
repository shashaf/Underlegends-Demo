// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function random_letter(){
	randomize();
	var _number = round(random_range(1, 26));
	var _letter = "";
	switch (_number) {
		case 1:
			_letter = "a";
			break;
		case 2:
			_letter = "b";
			break;
		case 3:
			_letter = "c";
			break;
		case 4:
			_letter = "d";
			break;
		case 5:
			_letter = "e";
			break;
		case 6:
			_letter = "f";
			break;
		case 7:
			_letter = "g";
			break;
		case 8:
			_letter = "h";
			break;
		case 9:
			_letter = "_i";
			break;
		case 10:
			_letter = "j";
			break;
		case 11:
			_letter = "k";
			break;
		case 12:
			_letter = "l";
			break;
		case 13:
			_letter = "m";
			break;
		case 14:
			_letter = "n";
			break;
		case 15:
			_letter = "o";
			break;
		case 16:
			_letter = "p";
			break;
		case 17:
			_letter = "q";
			break;
		case 18:
			_letter = "r";
			break;
		case 19:
			_letter = "s";
			break;
		case 20:
			_letter = "t";
			break;
		case 21:
			_letter = "u";
			break;
		case 22:
			_letter = "v";
			break;
		case 23:
			_letter = "w";
			break;
		case 24:
			_letter = "x";
			break;
		case 25:
			_letter = "y";
			break;
		default :
			_letter = "a";
			break;
	}
	return _letter;
}