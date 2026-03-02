



if inimigo[0] <= 0{
	obj_jogador.movendo = false
	obj_controle.estado = "andando"
	inimigo[0] = 10
	obj_controle.turno = 0
	audio_stop_all()
	audio_play_sound(snd_musica_mundo_1,1,0)

}
if jogador[0] <= 0{
	room_restart()
}
if obj_controle.estado == "em_combate"{

	x = camera_get_view_x(view_camera[0])


	if novas_cartas{
		if q_espada > 0{
			baralho[0] = espada
		}
		if q_fruta > 0{
			baralho[1] = fruta
		}
		if q_pocao > 0{
			baralho[2] = pocao
		}
		novas_cartas = false
	}
	if iniciar_turno{
		iniciar_turno = false
		inimigo[2]-= 1
		if inimigo[2]<= 0{
			obj_inimigo_batalha.sprite_index = spr_inimigo_batalha_atacando
			return
		}
	
		jogador[2]-= 1
		if jogador[2]<= 0{
			obj_jogador_batalha.sprite_index = spr_jogador_batalha_atacando
		}
	
	}
}