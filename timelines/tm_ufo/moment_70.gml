/// @description Baddies Appear 3
{
if __view_get( e__VW.XView, 0 )>=3440-2-320-160
{
if specialSet8=0
{specialSet8=1
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,196,oAlienRobot)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60}
en2=instance_create(__view_get( e__VW.XView, 0)+320+64,244,oAlienRobot)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60}	
}
}
else
{timeline_position-=1 exit;}

if __view_get( e__VW.XView, 0 )>=3440-2-320
{
en3=instance_create(2360,146,oAreaSpawner)
en4=instance_create(2470,146,oAreaSpawner)
en5=instance_create(2580,146,oAreaSpawner)
with oAreaSpawner
{spawnX=x-240 ///768
MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
enemytype0=oSpacer
enemyMax=0}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 196,oAlienRobot)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 196+32,oAlienRobot)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 196+64,oAlienRobot)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}
////
}
else
timeline_position-=1
}


