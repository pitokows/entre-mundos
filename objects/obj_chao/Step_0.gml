


if obj_controle.estado == "em_combate"{
	
}else if obj_controle.estado == "andando"{

	obj_controle.posicao_jogador[local] = [x,y]
	if criar_item{
		if obj_controle.caminho[local] == 2{
			instance_create_layer(x,y,"Instances",obj_item)
		
		}
		criar_item = false
	}

	if obj_controle.mundo == 0{
		image_index = obj_controle.caminho[local]
	}else{
		image_index = 3
	}



	if point_in_rectangle(mouse_x,mouse_y,x-155,y-155,x+155,y+155){
		//depth = profundidade-2
		//image_xscale = 1.2
		//image_yscale = 1.2
	}else{
		//depth = profundidade
		image_xscale = 1
		image_yscale = 1
	}

}