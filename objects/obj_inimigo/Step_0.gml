xx = ((x div t_grid) * t_grid)+108
yy = ((y div t_grid) * t_grid)+108

var jx = ((obj_jogador.x div t_grid) * t_grid)+108
var jy = ((obj_jogador.y div t_grid) * t_grid)+108


if jx == xx and jy == yy{
	obj_controle.estado = "em_combate"
}