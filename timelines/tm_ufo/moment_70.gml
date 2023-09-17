/// @description Baddies Appear 3
{
if __view_get( e__VW.XView, 0 )>=3440-2-320-160
{
if specialSet8=0
{specialSet8=1
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,176,oAlienRobot)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60}
en2=instance_create(__view_get( e__VW.XView, 0)+320+64,240,oAlienRobot)
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
{isDepth=0 depth=16777200 sittingSpr=spr_spacer_front spawnFall=spr_spacer_front rangeXAdd=0
	rangeX=0 spawnEnemy=oSpacer
	flashFX(x,y,0,spr_ateleporter,0,0.5,10,1,1,c_white,1)
	}	
}
else
timeline_position-=1
}


