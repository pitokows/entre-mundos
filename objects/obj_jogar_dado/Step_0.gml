image_blend = c_white
if obj_controle.estado = "andando" and !obj_jogador.movendo and obj_jogador.sprite_index == spr_jogador{

	if point_in_rectangle(mouse_x,mouse_y,x-300,y-100,x+300,y+100){
		image_blend = c_red
		if mouse_check_button_pressed(mb_left){
			obj_controle.jogar_dado = true
		}
	}
}
x = 806 + camera_get_view_x(view_camera[0])