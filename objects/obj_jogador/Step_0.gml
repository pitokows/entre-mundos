
if mouse_check_button_pressed(mb_left){
	//dado = 6
	//movendo = true
    
}




if movendo{
	if som_pular{
		som_pular = false
		audio_play_sound(snd_pulo,1,0)
	}
	if obj_controle.mundo == 0{
		switch lado{
			case "direita":
				sprite_index = spr_jogador_direita
			break;
			case "baixo":
				sprite_index = spr_jogador_bai
			break;
			case "cima":
				sprite_index = spr_jogador_cim
			break;
		}
	}else{
		switch lado{
			case "direita":
				sprite_index = spr_jogador_direita_1
			break;
			case "baixo":
				sprite_index = spr_jogador_bai_1
			break;
			case "cima":
				sprite_index = spr_jogador_cim_1
			break;
		}
	}
}else{
	x = obj_controle.posicao_jogador[local][0]
	y = obj_controle.posicao_jogador[local][1]

	
	dado -= 1
	
	
	
	if dado <= 0{
		if sprite_index != spr_jogador{
			obj_controle.turno++
			switch obj_controle.turno{
				case 3:
					audio_stop_all()
					audio_play_sound(snd_musica_mundo_2,1,1)
				break;
				case 5:
					audio_stop_all()
					audio_play_sound(snd_musica_duelo,1,1)
				break;
			}
			
		}
		movendo = false
	}else{
		movendo = true
	}
	sprite_index = spr_jogador
	
}
if image_index >= 3{
	movendo = false
	local += 1
	som_pular = true
	
	
}