/// @description Insert description here
// You can write your code in this editor



if turno > 5{
	turno = 0
}
if turno == 5{
	estado = "em_combate"
}
if turno < 3{
	mundo = 0
	layer_set_visible("mundo_normal",true)
}else{
	mundo = 1
	layer_set_visible("mundo_normal",false)
}


if estado == "em_combate"{
	layer_set_visible("batalha",true)
	obj_camera.x = obj_jogador.x
	
	
	
}else if obj_controle.estado == "andando"{
	
	layer_set_visible("batalha",false)
	if jogar_dado{
		jogando -= 0.1
		if jogando == 4.9{
			dado = irandom_range(1,6)
		}else if jogando == 4{
			dado = irandom_range(1,6)
		}else if jogando == 3{
			dado = irandom_range(1,6)
		}else if jogando == 2{
			dado = irandom_range(1,6)
		}else if jogando == 1{
			dado = irandom_range(1,6)
			obj_jogador.movendo = true
			obj_jogador.dado = dado
			jogando = 6
			jogar_dado = false
		}
	
	
	
	}
}
obj_dado.image_index = dado-1