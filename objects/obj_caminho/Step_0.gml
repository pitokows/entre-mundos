var x1 = x
var y1 = y
if mp_grid_path(grid_movimento,caminho,x1,y1,x2,y2,0){
    path_start(caminho,216,path_action_stop,0)
}else{
    instance_destroy()
}

var mx = ((x div t_grid) * t_grid)+108
var my = ((y div t_grid) * t_grid)+108


if mx != m_x or my != m_y{
     array_push(obj_controle.caminho_desenho, [mx, my]);
    moveu += 1
    m_x = mx
    m_y = my
}
if mx == x2 and my == y2{
    instance_destroy()
}