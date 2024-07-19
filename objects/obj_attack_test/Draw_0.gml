draw_self();

draw_rectangle(x, y, border_right, y + border_height, true); //отрисовка рамки
draw_rectangle(x+1, y+1, border_right-1, y + border_height-1, true);
draw_rectangle(x+2, y+2, border_right-2, y + border_height-2, true);
draw_rectangle(x+3, y+3, border_right-3, y + border_height-3, true);