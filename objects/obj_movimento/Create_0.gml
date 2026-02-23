moveu = 0
m_x = 0
m_y = 0
t_grid = 216
cel_h = room_width div t_grid;
cel_v = room_height div t_grid;
grid_movimento = mp_grid_create(0,0,cel_h,cel_v,t_grid,t_grid)
mp_grid_add_instances(grid_movimento,obj_colisao,0)
caminho = path_add()

x2 = ((mouse_x div t_grid) * t_grid)+108
y2 = ((mouse_y div t_grid) * t_grid)+108
obj_controle.caminho_jogador = []