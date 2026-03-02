
t_l = 11
t_a = 5
t_q = t_l*t_a
xx = 0
yy = 0
for (var _i = 0;_i < t_q;_i++;){
	var local_x = 330 + 330*xx
	var local_y = 620 + 310*yy
	var chao = instance_create_layer(local_x,local_y,"chao",obj_chao)
	chao.local = _i
	chao.profundidade = 200-_i
	
	xx++;
	if xx >= t_l{
		xx=0;
		yy++;
	}
	
	
}
instance_destroy()





