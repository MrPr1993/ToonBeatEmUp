/// @description Submarine Area

if __view_get( e__VW.XView, 0 )>=3680-2
{

en3=instance_create(3746,160,oAreaSpawner) with en3
{
spawnX=x-160
enemytype0=oLobster
MaxSpawnFrame=0 visible=1 name0="PINCHER"
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
turn0=-1 enemyMax=0
}



en5=instance_create(__view_get( e__VW.XView, 0)-64,190,oLobster)
with en5 {image_xscale=1 ground=0 image_xscale=1 canAttack=5 alarm[1]=60}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+64, 180,oLobster)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=-1}}

en4=instance_create(__view_get( e__VW.XView, 0)+320+64,180+32,oLobster)
with en4 {image_xscale=-1 ground=0 canAttack=5 alarm[1]=60}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+64, 180+64,oLobster)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+64, 180+96,oLobster)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}
////



}
else
timeline_position-=1
