/// @description Baddies Appear 6

if __view_get( e__VW.XView, 0 )>=9000-2-320
{
en9=instance_create(__view_get( e__VW.XView, 0)+320+64,208-32,oLadybot)
with en9 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_modify(my_pal_sprite,3,"METR-A",0,0.4,0.4)}
en10=instance_create(__view_get( e__VW.XView, 0)+320+64,208-16,oLadybot)
with en10 {image_xscale=-1 canAttack=5 alarm[1]=60 }	
en11=instance_create(__view_get( e__VW.XView, 0)+320+64,208+16,oLadybot)
with en11 {image_xscale=-1 canAttack=5 alarm[1]=60}
en12=instance_create(__view_get( e__VW.XView, 0)+320+64,208+32,oLadybot)
with en12 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_modify(my_pal_sprite,3,"METR-A",0,0.4,0.4)}

}
else
{
timeline_position-=1
}

