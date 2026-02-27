draw_self()

draw_set_font(fnt_texto)

draw_set_halign(fa_center)
draw_set_valign(fa_middle)
switch status{
	case 0:
		draw_text_transformed_colour(x,y,obj_batalha.jogador[0],2,2,0,c_black,c_black,c_black,c_black,1)
	break;
	case 1:
		draw_text_transformed_colour(x,y,obj_batalha.jogador[1],2,2,0,c_black,c_black,c_black,c_black,1)
	break;
	case 2:
		draw_text_transformed_colour(x,y,obj_batalha.jogador[2],2,2,0,c_black,c_black,c_black,c_black,1)
	break;
	case 3:
		draw_text_transformed_colour(x,y,obj_batalha.inimigo[0],2,2,0,c_black,c_black,c_black,c_black,1)
	break;
	case 4:
		draw_text_transformed_colour(x,y,obj_batalha.inimigo[1],2,2,0,c_black,c_black,c_black,c_black,1)
	break;
	case 5:
		draw_text_transformed_colour(x,y,obj_batalha.inimigo[2],2,2,0,c_black,c_black,c_black,c_black,1)
	break;
	case 6:
		draw_text_transformed_colour(x,y,obj_batalha.sino_compra,3,3,0,c_black,c_black,c_black,c_black,1)
	break;

}


