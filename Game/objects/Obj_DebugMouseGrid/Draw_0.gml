var cell = 32;
var cell_x = floor(mouse_x / cell);
var cell_y = floor(mouse_y / cell);
var x1 = cell_x * cell;
var y1 = cell_y * cell;
var x2 = x1 + cell;
var y2 = y1 + cell;
draw_rectangle(x1,y1,x2,y2,true);