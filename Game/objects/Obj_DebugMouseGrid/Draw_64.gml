var cell = 32;
var cell_x = floor(mouse_x / cell);
var cell_y = floor(mouse_y / cell);
var str = "Mouse Cell: [" + string(cell_x) + ", " + string(cell_y) + "]";
draw_text(4,20,str);