// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_season(_month){
	var _season = "";
		if ((1<= _month and _month <= 2) or (_month == 12)) {
			_season = "winter";
		}
		else if (3 <= _month and _month <= 5) {
			_season = "spring";
		}
		else if (6 <= _month and _month <= 8) {
			_season = "summer";
		}
		else if (9 <= _month and _month <= 11) {
			_season = "autumn";
		}
	return _season;
}