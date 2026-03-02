
for (var _i = 0; _i < 6; _i++){
	
	draw_sprite(spr_acoes,acoes[_i],x+200*_i,y)
	draw_sprite(spr_seta,0,x+200*obj_controle.turno,y+150)
	
	
	
}
draw_set_colour(c_white)
draw_set_valign(fa_top)
draw_set_font(fnt_texto)
draw_set_halign(fa_center)
var texto =  "mundo humano"
if obj_controle.turno > 2{
	texto =  "mundo espiritual"
}
draw_text_transformed(x+200*obj_controle.turno,y+200,texto,2,2,0)