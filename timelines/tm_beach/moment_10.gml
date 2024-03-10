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
enemyMax=1
enemytype0=oEnemy1 
enemytype1=oEnemy1B
visible=1
FXtype=4 canDraw=1 FrameVis=1 hasFake=0 sprite_index=spr_doortrap



}
}
else
{
timeline_position-=1
}

