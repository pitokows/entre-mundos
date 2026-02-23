/// @description Insert description here
// You can write your code in this editor


if (movendo && indice < array_length(caminho)){
   var alvo = caminho[indice];
   var tx = alvo[0];
   var ty = alvo[1];
   
   var dx = tx - x;
   var dy = ty - y;
   var dist = point_distance(x,y,tx,ty);
   
   if (dist <= vel)
   {
       x = tx;
       y = ty;
       indice++;
   
       if (indice >= array_length(caminho))
           movendo = false;
   }
   else
   {
       var dir = point_direction(x,y,tx,ty);
       x += lengthdir_x(vel, dir);
       y += lengthdir_y(vel, dir);
   }
}else if mouse_check_button_pressed(mb_left){
    instance_create_layer(x,y,"Instances",obj_movimento)
}
