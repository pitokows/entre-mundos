



if status == 6{
	if point_in_rectangle(mouse_x,mouse_y,x-155,y-155,x+155,y+155){
		if mouse_check_button_pressed(mb_left){
			if obj_batalha.sino_compra != 0{
				obj_batalha.iniciar_turno = true
			}
			obj_batalha.sino_compra -= 1
			obj_batalha.novas_cartas = true
			
			if obj_batalha.sino_compra <= 0{
				obj_batalha.sino_compra = 4
			}
		}
	image_xscale = 1.2
	image_yscale = 1.2
	}else{
		image_xscale = 1
		image_yscale = 1
	}

}
image_index = status

x = xx + camera_get_view_x(view_camera[0])

