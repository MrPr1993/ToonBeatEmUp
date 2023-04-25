if !instance_exists(en1)
and !instance_exists(en2)
{
en1=instance_create(__view_get( e__VW.XView, 0)-64,190,oGoblin)
with en1 {image_xscale=1 canAttack=5 alarm[1]=60}

en2=instance_create(__view_get( e__VW.XView, 0)-64,224,oGoblin)
with en2 {image_xscale=1 canAttack=5 alarm[1]=60 enemy_modify(my_pal_sprite,1,"GOHNNY",0,hp,maxhp)}	

en3=instance_create(__view_get( e__VW.XView, 0)-64,190,oGoblin)
with en3 {image_xscale=1 canAttack=5 alarm[1]=60}

}
else
timeline_position-=1;