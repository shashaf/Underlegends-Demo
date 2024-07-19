// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_contact_info(_contact, _room_id){
	if (_contact == 0) {
		if global.language == "rus" {
			messages[1] = "* ...";
			messages[2] = "* Никто не взял трубку.";
		}
		else {
			messages[1] = "* ...";
			messages[2] = "* No one picked up.";
		}
		messages_end = 2;
		
	}
	else if (global.cell[_contact] == "Papyrus") or (global.cell[_contact] == "Папирус") {
		font = fnt_papyrus_phone_rus;
		voice = snd_papyrus_voice;
		avatar = spr_papyrus_dialogue_cool;
		text_x_with_avatar = 168;
		text_height = 36;
		if global.language == "rus" {
			messages[1] = "* Привет, человек,`n  которого я никогда`n  не встречал!!";
			messages[2] = "* Это я, твой крутой`n  друг - Великий Папирус!";
			messages[3] = "* Я здесь для теста`n  звонков!";
			messages[4] = "* Никто не разбирается`n  в этом лучше, чем я!";
		
			messages[6] = "* Отлично!";
			if _room_id == rm_ruins_0 {
				messages[5] = "* Хм... Ты в первой`n  комнате, верно?";
				messages[7] = "* Я слышал, что там`n  много крутых штук."
				messages[8] = "* Развлекайся!";
				messages_end = 8;
			}
			else if _room_id == rm_ruins_1_prototype {
				messages[5] = "* Хм... Ты во второй`n  комнате, верно?";
				messages[7] = "* Я слышал, там есть очень`n  крутая дверь в конце."
				messages[8] = "* Интересно, куда она`n  ведет?";
				messages[9] = "* О, и кое-кто сказал`n  мне...";
				messages[10] = "`w* Что... большинство`n  `yсекретов`w тоже в`n  этой комнате.";
				messages[11] = "* Что бы это ни значило.";
				messages[12] = "* В любом случае, веселись!";
				messages_end = 12;
			}
			else if _room_id == rm_remix {
				messages[5] = "* Эм...";
				messages[6] = "* Что это за комната?";
				messages[7] = "* Она выглядит пустой и...";
				messages[8] = "* Это что, другой телефон?";
				messages[9] = "* Ты хочешь, чтобы`n  я поговорил по нему?";
				messages[10] = "* Ох, прости, человек,`n  но я боюсь, ты должен`n  сделать это сам.";
				messages[11] = "* Это будет моментом`n  твоего взросления.";
				messages[12] = "* Я верю в тебя, человек!";
				messages_end = 12;
			}
			else if _room_id == rm_66 {
				messages[5] = "* Эм...";
				messages[6] = "* Что это за комната?";
				messages[7] = "* Она выглядит пустой и...";
				messages[8] = "* Подожди, это тот`n  дурацкий мэшап?";
				messages[9] = "* Санс постоянно`n  разыгрывает меня с ним!!";
				messages[10] = "* Не беспокойся, человек!";
				messages[11] = "* Теперь мы есть друг у`n  друга, чтобы разделить`n  эту боль напополам.";
				messages_end = 11;
			}
			if global.enough != 0 {
				messages[1] = "* ...";
				messages[2] = "* Никто не взял трубку.";
				messages_end = 2;
				avatar = spr_dialogue_empty;
				voice = snd_text2;
				font = fnt_dialogue;
				text_x_with_avatar = 80;
				text_height = 28;
			}
		}
		else {
			messages[1] = "* Hello, human I've never`n  met!!";
			messages[2] = "* It's me, your cool friend`n  The Great Papyrus!";
			messages[3] = "* I'm here to test the phone`n  calls!";
			messages[4] = "* Nobody knows this better`n  than me!";
		
			messages[6] = "* Great!";
			if _room_id == rm_ruins_0 {
				messages[5] = "* Hmm... You're in the`n  first room, right?";
				messages[7] = "* I heard there's a lot of`n  cool stuff there."
				messages[8] = "* Have fun!";
				messages_end = 8;
			}
			else if _room_id == rm_ruins_1_prototype {
				messages[5] = "* Hmm... You're in the`n  second room, right?";
				messages[7] = "* I heard there's a really`n  cool door at the end."
				messages[8] = "* I wonder where it leads?";
				messages[9] = "* Oh, and someone told`n  me...";
				messages[10] = "* That... most of `ythe secrets`n  `ware in this room too.";
				messages[11] = "* Whatever that means.";
				messages[12] = "* Anyway, have fun!";
				messages_end = 12;
			}
			else if _room_id == rm_66 {
				messages[5] = "* Um...";
				messages[6] = "* What is this room?";
				messages[7] = "* It looks empty and...";
				messages[8] = "* Wait, is this that stupid`n  mashup?";
				messages[9] = "* Sans always pranks me`n  with it!!";
				messages[10] = "* Don't worry, human!";
				messages[11] = "* Now we have each other`n  to share this pain in half.";
				messages_end = 11;
			}
			else if _room_id == rm_remix {
				messages[5] = "* Um...";
				messages[6] = "* What is this room?";
				messages[7] = "* It looks empty and...";
				messages[8] = "* What is this, another`n  phone?";
				messages[9] = "* Do you want me to talk`n  on it?";
				messages[10] = "* Oh, I'm sorry, human! I'm`n  afraid you must do it`n  yourself.";
				messages[11] = "* This will be your`n  moment of growing up..";
				messages[12] = "* I believe in you,  human!";
				messages_end = 12;
			}
			if global.enough != 0 {
				messages[1] = "* ...";
				messages[2] = "* No one picked up.";
				messages_end = 2;
				avatar = spr_dialogue_empty;
				voice = snd_text2;
				font = fnt_dialogue;
				text_x_with_avatar = 80;
				text_height = 28;
			}
		}
	}
	else if global.cell[_contact] == "???" {
		font = fnt_bookman;
		voice = snd_phone_guy_voice;
		if global.language == "rus" {
			messages[1] = "* О, мой контакт заметили.";
			messages[2] = "* Я рад и впечатлён.";
			messages[3] = "* Раз уж ты здесь, я`n  могу поделиться `yсекретом`w.";
			messages[4] = "* Приготовься.";
			messages[5] = "* И слушай.";
			messages[6] = "* Нажатие F1 включает и`n  выключает `yрежим разработчика`w.";
			messages[7] = "* Это довольно забавная штука.";
			messages[8] = "* Повеселись с ней, если хочешь!";
		}
		else {
			messages[1] = "* Oh, you've noticed my contact.";
			messages[2] = "* I'm happy and impressed.";
			messages[3] = "* Since you've reached here,`n  I can share `ya secret `wwith you.";
			messages[4] = "* Are you ready?";
			messages[5] = "* Listen.";
			messages[6] = "* Pressing F1 turns `ydeveloper`n  mode `won and off.";
			messages[7] = "* It's a pretty funny little thing.";
			messages[8] = "* Have fun with it if you want!";
		}
		messages_end = 8;
	}
}