intro_message[0] = "Sweet dreams, my children,\nmom loves you!"
intro_message[1] = "Mom, will you tell a fairy tale?"
intro_message[2] = "Oh, you want a fairy tale?\nMaybe it would be better to read\na book about ancient monsters?"
intro_message[3] = "We have already read it. I want to\nhear a bedtime story! Pleeeease!"
intro_message[4] = "Have you already read it? My smarties!\nWell then you will have a fairy tale."
intro_message[5] = "Long ago, the earth was\nruled by two races:\nHUMANS and MONSTERS."
intro_message[6] = "One day, a war broke out between th"
intro_message[7] = "Wait, is this a fairy tale about\nthe human in the Underground again?"
intro_message[8] = "But you've already told this story!";
intro_message[9] = "I thought you liked it, honey...";
intro_message[10] = "It's good, but I want to listen\nto something new.";
intro_message[11] = "And what about your sibling?";
intro_message[12] = "They fell asleep all the time\nand never listened to the end.";
intro_message[13] = "I already told them the whole story!";
intro_message[14] = "Not the whole.";
intro_message[15] = "Wh.. What?\nI told you everything to the end!";
intro_message[16] = "You didn't tell me what happened\nto those six humans.";
intro_message[17] = "How did they get into the Underground?";
intro_message[18] = "To those... Humans? Mmm..."
intro_message[19] = "I don't remember...\nMom, what happened to them?"
intro_message[20] = "Do you want to know what happened\nto the humans who fell\ninto the Underground earlier?"
intro_message[21] = "If so, that's what today's\nstory is about. Listen carefully..."

asriel_lines = [1, 3, 7, 8, 10, 13, 15, 18, 19]
voice = snd_toriel_voice;
message_current = 0;
message_end = 21;
message_draw = "";
increase = 1;
characters = 0;

message_length = string_length(intro_message[message_current]);

next_m = false;
ok = false;
text = 0;
