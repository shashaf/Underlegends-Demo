if can_progress == true and loading_progress < 96 {
	if bar_width < 396 {
		bar_width+=2;
	}
	loading_progress++;
}

loading_text = "Loading: " + string(loading_progress) + "%";
if global.language == "rus" {	
	loading_text = "Загрузка: " + string(loading_progress) + "%";
}
