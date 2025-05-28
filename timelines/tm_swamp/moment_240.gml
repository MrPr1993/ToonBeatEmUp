/// @description Next
////Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=1158-320
{

en1=instance_create(1146,132-8,oEntryFenceJump)
with en1
{depth=16777208 isDepth=0 ySpeed=1.5 rideX=1160 spawnSpeedZ=-8
}
en2=instance_create(1300,132-8,oEntryFenceJump)
with en2
{depth=16777208 isDepth=0 rangeXAdd=48  ySpeed=1.5
		spawnFall=spr_burglarB_front rideX=1333
	moveSpr=spr_burglarB_run spawnSpeedZ=-8
	spawnEnemy=oEnemy1B
	enemy_switch("MR.LAD",0)
	
	}
	
en3=instance_create(1500,132-8,oEntryFenceJump)
with en3
{depth=16777208 isDepth=0 rangeXAdd=-48 ySpeed=1.5 rideX=1520
enemy_switch("MR.LAR",0) spawnSpeedZ=-8
}

en4=instance_create(1660-32,196-24,oWrestler)
with en4
{canmove=0 isIdle=1 alarm[1]=60 anim=70002 idleRange=30 
	enemyIdle3=spr_wrestler_idle1
	}
en5=instance_create(1660+48,196-24,oWrestler)
with en5{canmove=0 isIdle=1 alarm[1]=60 anim=70002 idleRange=60+32
	enemyIdle3=spr_wrestler_idle2 enemy_switch("MS.CRUSH",0)	
	image_xscale=-1}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 150,oEnemy1)
with P2en1 {enemy_switch("MR.LAR",0) canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 150+48,oEnemy1B)
with P2en2 {enemy_switch("MR.LAD",0) canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 150+96,oEnemy1)
with P2en3 {enemy_switch("MR.LAR",0) canAttack=5 alarm[1]=30 image_xscale=-1}}
////

}
else
timeline_position-=1

