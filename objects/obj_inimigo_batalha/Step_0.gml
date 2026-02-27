x = xx + camera_get_view_x(view_camera[0])

if sprite_index == spr_inimigo_batalha_atacando{
	if image_index >=3{
		obj_batalha.jogador[2] -= 1
		obj_batalha.jogador[0] -= obj_batalha.inimigo[1] 
		obj_jogador_batalha.tomar_dano = true
		audio_play_sound(snd_ataque,1,0)
		if obj_batalha.jogador[2] <= 0{
			obj_jogador_batalha.sprite_index = spr_jogador_batalha_atacando
		}
		obj_batalha.inimigo[2] = 2
		sprite_index = spr_inimigo_batalha
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

