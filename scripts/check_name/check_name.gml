// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_name(_name){
	var _lower_name = string_lower(_name);
	if global.language == "rus" {
		switch(_lower_name) {
			case "fuck":
				//text = "relatable";
				text = "понимаю";
				break;
			case "dick":
				//text = "this is quite self-critical"
				text = "самокритично"
				break;
			case "bitch":
				//text = "this is quite self-critical"
				text = "самокритично"
				break;
			case "cyka":
				//text = "this is quite self-critical"
				text = "самокритично"
				break;
			case "eblan":
				//text = "this is quite self-critical"
				text = "самокритично"
				break;
			case "suka":
				//text = "this is quite self-critical"
				text = "самокритично"
				break;
			case "toby":
				//text = "woof!"
				text = "гав!"
				break;
			case "tem":
				//text = "hoI!"
				text = "приВ!"
				break;
			case "temmie":
				//text = "hoI!"
				text = "приВ!"
				break;
			case "papyru":
				//text = "I allow you.";
				text = "Я разрешаю тебе.";
				break;
			case "paps":
				//text = "Wowie!";
				text = "Ваушки!";
				break;
			case "papyrs":
				//text = "YOU FORGOT THE LETTER!!";
				text = "ТЫ ЗАБЫЛ БУКВУ!!";
				break;
			case "omori":
				//text = "oops, wrong game.";
				text = "уупс, не та игра.";
				break;
			case "basil":
				//text = "oops, wrong game.";
				text = "уупс, не та игра.";
				break;
			case "kel":
				//text = "oops, wrong game.";
				text = "уупс, не та игра.";
				break;
			case "aubrey":
				//text = "oops, wrong game.";
				text = "уупс, не та игра.";
				break;
			case "hero":
				//text = "oops, wrong game.";
				text = "уупс, не та игра.";
				break;
			case "sunny":
				//text = "oops, wrong game.";
				text = "уупс, не та игра.";
				break;
			case "mari":
				//text = "there is something behind you.";
				text = "кажется, что-то есть позади тебя";
				break;
			case "shasha":
				//text = "sounds cool";
				text = "звучит круто";
				break;
			case "sonic":
				text = "человека, а не ежа...";
				break;
			case "human": 
				//text = "very creative. (no)";
				text = "оч креативно. (нет)";
				break;
			//////////////////////////////////////////////////////////////////
			case "gaster":
				game_restart();
				break;
			case "chara":
				done = false;
				//text = "doubtful.";
				text = "сомнительно.";
				global.rejected_names = global.rejected_names + _name + "~";
				break;
			case "frisk":
				done = false;
				//text = "not yet.";
				text = "ещё нет.";
				global.rejected_names = global.rejected_names + _name + "~";
				break;
			case "alphys":
				done = false;
				//text = "D-don't do that.";
				text = "Н-не надо.";
				global.rejected_names = global.rejected_names + _name + "~";
				break;
			case "asgore":
				done = false;
				//text = "You cannot.";
				text = "Ты не можешь.";
				global.rejected_names = global.rejected_names + _name + "~";
				break;
			case "asriel":
				done = false;
				text = "...";
				global.rejected_names = global.rejected_names + _name + "~";
				break;
			case "flowey":
				done = false;
				//text = "I already CHOSE that _name";
				text = "Я уже ВЫБРАЛ это имя";
				global.rejected_names = global.rejected_names + _name + "~";
				break;
			case "san":
				text = "...";
				break;
			case "sans":
				done = false;
				//text = "nope";
				text = "неа";
				global.rejected_names = global.rejected_names + _name + "~";
				break;
			case "sansy":
				done = false;
				//text = "nope";
				text = "неа";
				global.rejected_names = global.rejected_names + _name + "~";
				break;
			case "sanss":
				done = false;
				//text = "nope";
				text = "неа";
				global.rejected_names = global.rejected_names + _name + "~";
				break;
			case "sansss":
				done = false;
				//text = "nope";
				text = "неа";
				global.rejected_names = global.rejected_names + _name + "~";
				break;
			case "toriel":
				done = false;
				//text = "Oh... You can't, my child..";
				text = "Ох... Так нельзя, дитя..";
				global.rejected_names = global.rejected_names + _name + "~";
				break;
			case "undyne":
				done = false;
				//text = "Get your OWN _name!";
				text = "Выбери СВОЕ имя!";
				global.rejected_names = global.rejected_names + _name + "~";
				break;
			//////////////////////////////////////////////////////////////////
			case "aaaaaa":
				//text = "really?..";
				text = "серьезно?..";
				break;
				
			case "aa":
				//text = "really?..";
				text = "серьезно?..";
				break;
				
			case "aaa":
				//text = "really?..";
				text = "серьезно?..";
				break;
			
			case "aaaa":
				//text = "really?..";
				text = "серьезно?..";
				break;
				
			case "aaaaa":
				//text = "really?..";
				text = "серьезно?..";
				break;
		
			case "tesla":
				text = "WP";
				break;
			case "russel":
				text = "usasel)"
				break;
			case "artem":
				text = "Artem from the word art";
				break;
			case "ena":
				//text = "privet kepcha!";
				text = "привет кепча!";
				break;
			case "alya":
				//text = "privet alya!";
				text = "привет аля!";
				break;
			case "misha":
				//text = "privet, Mishulek!"
				text = "привет, Мишулек!"
				break;
			case "eya":
				//text = "wow, cool _name!";
				text = "вау, крутое имя!";
				break;
			case "lina":
				//text = "love this _name";
				text = "люблю это имя";
				break;
			case "ruru":
				//text = "hi sweetheart <3"
				text = "привет золотце <3"
				break;
			case "shima":
				//text = "OMG IT'S SHIMA NORI"
				text = "О БОЖЕ ЭТО ШИМА НОРИ"
				break;
			case "nori":
				//text = "OMG IT'S SHIMA NORI"
				text = "О БОЖЕ ЭТО ШИМА НОРИ"
				break;
			case "kira":
				if obj_naming.human == 1 {
					text = "интересный выбор"
				}
				else {
					text = "";
				}
				break;
			case "kori":
				if obj_naming.human == 2 {
					text = "интересный выбор"
				}
				else {
					text = "";
				}
				break;
			case "clover":
				//text = "interesting choice"
				text = "очень смешно"
				break;
			case "lemike":
				//text = "interesting choice"
				text = "ты что-то знаешь?"
				done = false;
				global.rejected_names = global.rejected_names + _name + "~";
				break;
			case "putin":
				//text = "die pls";
				text = "...";
				break;
			
			/*case string_lower(global.human_1_name):
				if obj_naming.human == 2 {
					text = "Одинаковые имена?";
				}
				break;*/
			
			//////////////////////////////////////////////////////////////////
			default:
				done = true;
				text = "";
				break;
		}
	}
	else {
		switch(_lower_name) {
			case "fuck":
				text = "relatable";
				//text = "понимаю";
				break;
			case "dick":
				text = "this is quite self-critical"
				//text = "самокритично"
				break;
			case "bitch":
				text = "this is quite self-critical"
				//text = "самокритично"
				break;
			case "cyka":
				text = "this is quite self-critical"
				//text = "самокритично"
				break;
			case "eblan":
				text = "this is quite self-critical"
				//text = "самокритично"
				break;
			case "suka":
				text = "this is quite self-critical"
				//text = "самокритично"
				break;
			case "toby":
				text = "woof!"
				//text = "гав!"
				break;
			case "tem":
				text = "hoI!"
				//text = "приВ!"
				break;
			case "temmie":
				text = "hoI!"
				//text = "приВ!"
				break;
			case "papyru":
				text = "I allow you.";
				//text = "Я разрешаю тебе.";
				break;
			case "paps":
				text = "Wowie!";
				//text = "Ваушки!";
				break;
			case "papyrs":
				text = "YOU FORGOT THE LETTER!!";
				//text = "ТЫ ЗАБЫЛ БУКВУ!!";
				break;
			case "omori":
				text = "oops, wrong game.";
				//text = "уупс, не та игра.";
				break;
			case "basil":
				text = "oops, wrong game.";
				//text = "уупс, не та игра.";
				break;
			case "kel":
				text = "oops, wrong game.";
				//text = "уупс, не та игра.";
				break;
			case "aubrey":
				text = "oops, wrong game.";
				//text = "уупс, не та игра.";
				break;
			case "hero":
				text = "oops, wrong game.";
				//text = "уупс, не та игра.";
				break;
			case "sunny":
				text = "oops, wrong game.";
				//text = "уупс, не та игра.";
				break;
			case "mari":
				text = "there is something behind you.";
				//text = "кажется, что-то есть позади тебя";
				break;
			case "shasha":
				text = "sounds cool";
				//text = "звучит круто";
				break;
			case "sonic":
				text = "the human, not the hedgehoag...";
				//text = "человека, а не ежа...";
				break;
			case "human": 
				text = "very creative. (no)";
				//text = "оч креативно. (нет)";
				break;
			//////////////////////////////////////////////////////////////////
			case "gaster":
				game_restart();
				break;
			case "chara":
				done = false;
				text = "doubtful.";
				//text = "сомнительно.";
				global.rejected_names = global.rejected_names + _name + "~";
				break;
			case "frisk":
				done = false;
				text = "not yet.";
				//text = "ещё нет.";
				global.rejected_names = global.rejected_names + _name + "~";
				break;
			case "alphys":
				done = false;
				text = "D-don't do that.";
				//text = "Н-не надо.";
				global.rejected_names = global.rejected_names + _name + "~";
				break;
			case "asgore":
				done = false;
				text = "You cannot.";
				//text = "Ты не можешь.";
				global.rejected_names = global.rejected_names + _name + "~";
				break;
			case "asriel":
				done = false;
				text = "...";
				global.rejected_names = global.rejected_names + _name + "~";
				break;
			case "flowey":
				done = false;
				text = "I already CHOSE that _name";
				//text = "Я уже ВЫБРАЛ это имя";
				global.rejected_names = global.rejected_names + _name + "~";
				break;
			case "san":
				text = "...";
				break;
			case "sans":
				done = false;
				text = "nope";
				//text = "неа";
				global.rejected_names = global.rejected_names + _name + "~";
				break;
			case "sansy":
				done = false;
				text = "nope";
				//text = "неа";
				global.rejected_names = global.rejected_names + _name + "~";
				break;
			case "sanss":
				done = false;
				text = "nope";
				//text = "неа";
				global.rejected_names = global.rejected_names + _name + "~";
				break;
			case "sansss":
				done = false;
				text = "nope";
				//text = "неа";
				global.rejected_names = global.rejected_names + _name + "~";
				break;
			case "toriel":
				done = false;
				text = "Oh... You can't, my child..";
				//text = "Ох... Так нельзя, дитя..";
				global.rejected_names = global.rejected_names + _name + "~";
				break;
			case "undyne":
				done = false;
				text = "Get your OWN _name!";
				//text = "Выбери СВОЕ имя!";
				global.rejected_names = global.rejected_names + _name + "~";
				break;
			//////////////////////////////////////////////////////////////////
			case "aaaaaa":
				text = "really?..";
				//text = "серьезно?..";
				break;
				
			case "aa":
				text = "really?..";
				//text = "серьезно?..";
				break;
				
			case "aaa":
				text = "really?..";
				//text = "серьезно?..";
				break;
			
			case "aaaa":
				text = "really?..";
				//text = "серьезно?..";
				break;
				
			case "aaaaa":
				text = "really?..";
				//text = "серьезно?..";
				break;
		
			case "tesla":
				text = "WP";
				break;
			case "russel":
				text = "usasel)"
				break;
			case "artem":
				text = "Artem from the word art";
				break;
			case "ena":
				text = "privet kepcha!";
				//text = "привет кепча!";
				break;
			case "alya":
				text = "privet alya!";
				//text = "привет аля!";
				break;
			case "misha":
				text = "privet, Mishulek!"
				//text = "привет, Мишулек!"
				break;
			case "eya":
				text = "wow, cool _name!";
				//text = "вау, крутое имя!";
				break;
			case "lina":
				text = "love this _name";
				//text = "люблю это имя";
				break;
			case "ruru":
				text = "hi sweetheart <3"
				//text = "привет золотце <3"
				break;
			case "shima":
				text = "OMG IT'S SHIMA NORI"
				//text = "О БОЖЕ ЭТО ШИМА НОРИ"
				break;
			case "nori":
				text = "OMG IT'S SHIMA NORI"
				//text = "О БОЖЕ ЭТО ШИМА НОРИ"
				break;
			case "kira":
				if obj_naming.human == 1 {
					text = "interesting choice"
				}
				else {
					text = "";
				}
				//text = "интересный выбор"
				break;
			case "kori":
				if obj_naming.human == 2 {
					text = "interesting choice"
				}
				else {
					text = "";
				}
				//text = "интересный выбор"
				break;
			case "clover":
				text = "wow so funny"
				//text = "очень смешно"
				break;
			case "lemike":
				text = "do you know something?"
				//text = "ты что-то знаешь?"
				done = false;
				global.rejected_names = global.rejected_names + _name + "~";
				break;
			case "putin":
				//text = "die pls";
				text = "...";
				break;
			case "":
				done = false;
				text = "";
				break;
			//////////////////////////////////////////////////////////////////
			
			/*case string_lower(global.human_1_name):
				if obj_naming.human == 2 {
					text = "Same names?";
				}
				break;*/
			
			default:
				done = true;
				text = "";
				break;
		}
	}
	if string_starts_with(_lower_name, "sans") {
		done = false;
		global.rejected_names = global.rejected_names + _name + "~";
		if global.language == "rus" {
			text = "неа";
		}
		else {
			text = "nope";
		}
	}
	if (_lower_name == string_lower(global.human_1_name) and obj_naming.human == 2) {
		if global.language == "rus" {
			text = "Одинаковые имена?";
		}
		else {
			text = "Same names?";
		}
	}
	return text;
}