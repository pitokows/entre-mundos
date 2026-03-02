draw_self()
draw_set_font(fnt_texto)

if local < 81 and local == obj_jogador.local{
	//draw_text(x,y,string(obj_controle.posicao_jogador[local+1][0])+"/"+string(x))
	if obj_controle.posicao_jogador[local+1][0] == x+330{
		obj_jogador.lado = "direita"
	}else if obj_controle.posicao_jogador[local+1][0] == x and obj_controle.posicao_jogador[local+1][1] == y+310{
		obj_jogador.lado = "baixo"
	}else{
		obj_jogador.lado = "cima"
	}
}
if local == 81{
	
	sprite_index = spr_chegada
	x = xx+127
	if obj_jogador.x == x{
		obj_controle.turno = 0
		obj_botao_vitoria.visible = true
		obj_controle.estado = "fim"
	}
}