/// @description /Make sure to only count the previous ones, otherwise you'll get an error.

if __view_get( e__VW.XView, 0 )>=916-2-320
{
en1=instance_create(888, 192,oAreaSpawner) with en1
{
spawnX=0 ///768
MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
turn0=-1 

enemytype0=oBear  turn0=-1 name0="YOGI" hp0=0.15 pal0=2 palS0=spr_bearpal;
//enemytype2=oClown turn2=-1
enemyMax=0
}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,200+64,oBear)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60}	

}
else
{
timeline_position-=1
}

