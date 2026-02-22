/// @description Insert description here
// You can write your code in this editor

for (var _x = 0; _x <= room_width; _x += t_grid) {
    draw_line(_x, 0, _x, room_height);
}

for (var _y = 0; _y <= room_height; _y += t_grid) {
    draw_line(0, _y, room_width, _y);
}

var mx = ((mouse_x div t_grid) * t_grid)+108
var my = ((mouse_y div t_grid) * t_grid)+108



draw_rectangle(mx-108,my-108,mx+108,my+108,0)
draw_text(108,108,string(mx)+string(my))
