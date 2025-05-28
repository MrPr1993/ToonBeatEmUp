if __view_get( e__VW.XView, 0 )>=6684-320-2
{
en4=instance_create(6400, 192,oAreaSpawner) with en4
{
spawnX=6300+60 ///768
MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
turn0=-1 

enemytype0=oFairy
enemytype1=oFairy
//enemytype2=oClown turn2=-1
enemyMax=1


}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200,oFairy)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200+32,oFairy)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200+64,oFairy)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}
////


}
else
timeline_position-=1
