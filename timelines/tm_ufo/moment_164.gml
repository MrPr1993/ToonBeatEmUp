/// @description Baddies Appear 

if __view_get( e__VW.XView, 0 )>=9460-2-320
{

en6=instance_create(__view_get( e__VW.XView, 0)+320-64,190,oSpacer)
with en6 {enemy_modify(my_pal_sprite,1,"VER",0,0.4,0.4) canAttack=5 image_xscale=-1 flashFX(x,y+1,z,spr_ateleporter,0,0.25,10,1,1,c_white,1)}
en7=instance_create(__view_get( e__VW.XView, 0)+320-64,244,oSpacer)
with en7 {enemy_modify(my_pal_sprite,1,"VER",0,0.4,0.4) image_xscale=-1 canAttack=5 image_xscale=-1 flashFX(x,y+1,z,spr_ateleporter,0,0.25,10,1,1,c_white,1)}


}
else
{
timeline_position-=1
}

