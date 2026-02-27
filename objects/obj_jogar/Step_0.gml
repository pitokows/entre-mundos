image_blend = c_white

if point_in_rectangle(mouse_x,mouse_y,x-300,y-100,x+300,y+100){
	image_blend = c_red
	if mouse_check_button_pressed(mb_left){
		room_goto(rm_mapa)
	}
}

