/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_texto)

for (var _x = 0; _x <= room_width; _x += t_grid) {
    draw_line(_x, 0, _x, room_height);
}

for (var _y = 0; _y <= room_height; _y += t_grid) {
    draw_line(0, _y, room_width, _y);
}

var mx = ((mouse_x div t_grid) * t_grid)+108
var my = ((mouse_y div t_grid) * t_grid)+108


if !instance_exists(obj_caminho) and !obj_jogador.movendo{
    if mx != m_x or my != m_y{
        instance_create_layer(obj_jogador.x,obj_jogador.y,"Instances",obj_caminho)
        m_x = mx
        m_y = my
    
    }
}else if mx != m_x or my != m_y{
    m_x = 0
    m_y = 0
}

draw_rectangle(mx-108,my-108,mx+108,my+108,0)
draw_text(108,108,caminho_desenho)

if array_length(caminho_desenho) > 0 and !obj_jogador.movendo and !instance_exists(obj_caminho){
   
    for (var _i = 0; _i <= array_length(caminho_desenho); _i ++) { 
        
        if _i > 1{
            var _mx = caminho_desenho[_i-1][0]
            var _my = caminho_desenho[_i-1][1]
            draw_rectangle(_mx-108,_my-108,_mx+108,_my+108,0)
        }
        
       
       }
}