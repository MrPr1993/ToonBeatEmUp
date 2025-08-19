/// @description /Make sure to only count the previous ones, otherwise you'll get an error.

if __view_get( e__VW.XView, 0 )>=128
{


en2=instance_create(__view_get( e__VW.XView, 0)+320+64,200+64+240,oEnemy1B)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60
weapon_add("PIPE")
}	

en3=instance_create(__view_get( e__VW.XView, 0)+320+100,200+64+240+64,oFatBurglar)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("MR.WIDE",0)}

en4=instance_create_depth(814,448,-1,oAreaSpawner)
with en4
{
spawnX=804-160 ///768
MaxSpawnFrame=0 visible=1
FXtype=4 canDraw=1 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
enemytype0=oNinjaBun
enemytype1=oNinjaBun
}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 460,oNinjaBun)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 460+32,oNinjaBun)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 460+64,oNinjaBun)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}
////
}
else
{
timeline_position-=1
}

