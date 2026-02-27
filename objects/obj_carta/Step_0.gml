if obj_batalha.baralho[carta][0] != 0{
	image_alpha = 1
	image_index = obj_batalha.baralho[carta][0]
	
	if point_in_rectangle(mouse_x,mouse_y,x-190,y-346,x+190,y+155) and !obj_jogador_batalha.recuperar_vida  and !obj_inimigo_batalha.tomar_dano{
	
	if mouse_check_button_pressed(mb_left){
	
		obj_batalha.jogador[0] += obj_batalha.baralho[carta][1]
		obj_batalha.inimigo[0] -= obj_batalha.baralho[carta][2]
		if obj_batalha.baralho[carta][2] > 0{
			audio_play_sound(snd_usando_espada,1,0)
			obj_inimigo_batalha.tomar_dano = true
		}
		if obj_batalha.baralho[carta][1] > 0{
			audio_play_sound(snd_usando_fruta,1,0)
			obj_jogador_batalha.recuperar_vida = true
		}
		
		obj_batalha.baralho[carta] = obj_batalha.nada
		
		if obj_batalha.sino_compra <= 0{
			obj_batalha.sino_compra = 0
		}
		switch carta{
			case 0:
				obj_batalha.q_espada -= 1
			break;
			case 1:
				obj_batalha.q_fruta -= 1
			break;
			case 2:
				obj_batalha.q_pocao -= 1
			break;
		}
		usando_carta = true
		

	}
		image_xscale = 1.2
		image_yscale = 1.2
	}else{
		image_xscale = 1
		image_yscale = 1
	}



}else{
	image_alpha = 0.5
	image_xscale = 1
	image_yscale = 1
}


if usando_carta{
	contador--
	if contador < 0{
		obj_batalha.iniciar_turno = true
		obj_batalha.sino_compra -= 1
		contador = 19
		usando_carta = false
	}
}







x = xx+camera_get_view_x(view_camera[0])