/// @description Baddies Appear 5

if __view_get( e__VW.XView, 0 )>=7480-2-320-320
{
en3=instance_create(__view_get( e__VW.XView, 0)+320+64,208-24,oSneak)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("MR.SLINK",0)}
en4=instance_create(__view_get( e__VW.XView, 0)+320+64,208,oFatBurglar)
with en4 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("MR.HUGE",0)}	
en5=instance_create(__view_get( e__VW.XView, 0)+320+64,208+24,oSneak)
with en5 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("MR.SLINK",0)}

}
else
{
timeline_position-=1
}

