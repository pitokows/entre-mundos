



if sprite_index == spr_jogador_batalha_atacando{
	if image_index >=3{
		obj_batalha.inimigo[0] -= obj_batalha.jogador[1] 
		obj_batalha.jogador[2] = 3
		audio_play_sound(snd_ataque,1,0)
		sprite_index = spr_jogador_batalha
		obj_inimigo_batalha.tomar_dano = true
	}
}
if tomar_dano{
	image_blend = c_red
	contador--
	if contador < 0{
		contador = 20
		tomar_dano = false
		image_blend = c_white
	}
}
if recuperar_vida{
	image_blend = c_green
	contador--
	if contador < 0{
		contador = 20
		recuperar_vida = false
		image_blend = c_white
	}
}

x = xx + camera_get_view_x(view_camera[0])





