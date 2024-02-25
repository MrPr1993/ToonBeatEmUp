/// @description Baddies Appear 2
{
if __view_get( e__VW.XView, 0 )>=2640-2-320-160
{
if specialSet8=0
{specialSet8=1
en1=instance_create(__view_get( e__VW.XView, 0)-64,176,oMartian)
with en1 {image_xscale=1 canAttack=5 alarm[1]=60}
en2=instance_create(__view_get( e__VW.XView, 0)-64,240,oMartian)
with en2 {image_xscale=1 canAttack=5 alarm[1]=60}	
}
}
else
{timeline_position-=1 exit;}

if __view_get( e__VW.XView, 0 )>=2640-2-320
{
en3=instance_create_depth(2360,160,-1,oAreaSpawner) with en3 enemytype0=oAlienRobot
en4=instance_create_depth(2470,160,-1,oAreaSpawner) with en4 {enemytype0=oMartian pal0=1 name0="INVA"}
en5=instance_create_depth(2580,160,-1,oAreaSpawner) with en5 enemytype0=oAlienRobot
with oAreaSpawner
{spawnX=0 ///768
MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
enemyMax=0}

}
else
timeline_position-=1
}

