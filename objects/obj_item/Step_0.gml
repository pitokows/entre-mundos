if obj_controle.mundo == 0{
	image_index = 0
	if obj_controle.estado != "em_batalha" and !obj_jogador.movendo and obj_jogador.sprite_index == spr_jogador{
		if obj_jogador.x == x and obj_jogador.y == y{
			obj_batalha.q_fruta += 2
			audio_play_sound(snd_maca,1,0)
			instance_destroy()
		}
	}
}else{
	image_index = item
	if obj_controle.estado != "em_batalha" and !obj_jogador.movendo and obj_jogador.sprite_index == spr_jogador{
		if obj_jogador.x == x and obj_jogador.y == y{
			switch item{
				case 1:
					obj_batalha.q_espada += 2
					audio_play_sound(snd_espada,1,0)
				break;
				case 2:
					obj_batalha.q_pocao += 2
					audio_play_sound(snd_pocao,1,0)
				break;
			}
			
			instance_destroy()
		}
	}
}

