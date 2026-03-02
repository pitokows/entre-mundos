if obj_controle.estado == "em_combate" exit;
if mouse_check_button_pressed(mb_right){
	//local = 80
	//dado = 6
	//movendo = true
    
}
if keyboard_check_pressed(ord("D")) and !movendo{
	//movendo = true
	//lado = "direita"
}
if keyboard_check_pressed(ord("A")) and !movendo{
	//movendo = true
	//lado = "esquerda"
}
if keyboard_check_pressed(ord("W")) and !movendo{
	//movendo = true
	//lado = "cima"
}
if keyboard_check_pressed(ord("S")) and !movendo{
	//movendo = true
	//lado = "baixo"
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
			case "esquerda":
				sprite_index = spr_jogador_esquerda
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
			case "esquerda":
				sprite_index = spr_jogador_esquerda_1
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
	//sprite_index = spr_jogador
	switch lado{
		case "direita":
			//x += 330
		break;
		case "esquerda":
			//x -= 330
		break;
		case "baixo":
			//y += 310
		break;
		case "cima":
			//y -= 310
		break;
	}
	
	
	movendo = false
	local += 1
	if local >= 81{
		local = 81
		dado = 0
	}
	som_pular = true
	//obj_controle.turno++
	
}