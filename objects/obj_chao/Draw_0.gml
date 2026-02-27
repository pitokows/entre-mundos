draw_self()
draw_set_font(fnt_texto)

if local < 80 and local == obj_jogador.local{
	//draw_text(x,y,string(obj_controle.posicao_jogador[local+1][0])+"/"+string(x))
	if obj_controle.posicao_jogador[local+1][0] == x+330{
		obj_jogador.lado = "direita"
	}else if obj_controle.posicao_jogador[local+1][0] == x and obj_controle.posicao_jogador[local+1][1] == y+310{
		obj_jogador.lado = "baixo"
	}else{
		obj_jogador.lado = "cima"
	}
}
if local == 43{
	//sprite_index = spr_chao_vitoria
	if obj_jogador.x == x{
		room_goto(rm_vitoria)
	}
}