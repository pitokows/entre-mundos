draw_set_colour(c_white)
draw_self()
draw_set_colour(c_black)
draw_set_font(fnt_texto)
draw_set_halign(fa_center)
draw_text_transformed(x,y,"passar turno e \n comprar novas \n cartas.",2,2,0)


x = xx+camera_get_view_x(view_camera[0])
