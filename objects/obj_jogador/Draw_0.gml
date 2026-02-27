
//draw_circle(x,y,100,0)
if sprite_index == spr_jogador{
	if obj_controle.mundo == 0{
		draw_sprite(spr_jogador,0,x,y)
	}else{
		draw_sprite(spr_jogador_1,0,x,y)
	}
	
}else{
	draw_self()
}
