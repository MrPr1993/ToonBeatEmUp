/// @description Next
////Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=1158
{

en1=instance_create(__view_get( e__VW.XView, 0)-64,140,oEntryFenceJump)
with en1
{depth=16777210 isDepth=0
}
en2=instance_create(__view_get( e__VW.XView, 0)-64-100,140,oEntryFenceJump)
with en2
{depth=16777210 isDepth=0 rangeXAdd=48 xAdd=-100
		spawnFall=spr_burglarB_front
	moveSpr=spr_burglarB_run
	spawnEnemy=oEnemy1B}
	
en3=instance_create(__view_get( e__VW.XView, 0)-64-200,140,oEntryFenceJump)
with en3
{depth=16777210 isDepth=0 rangeXAdd=-48 xAdd=-200
}

if playernumber>=2 {P2en1=instance_create(1200,140,oEntryFenceJump)
with P2en1 {rangeX=0 depth=16777210 isDepth=0}}

if playernumber>=3 {P2en2=instance_create(1370,140,oEntryFenceJump)
with P2en2 {rangeX=0 depth=16777210 isDepth=0
			spawnFall=spr_burglarB_front
	moveSpr=spr_burglarB_run
	spawnEnemy=oEnemy1B
	}}

if playernumber>=4 {P2en3=instance_create(1430,140,oEntryFenceJump)
with P2en3 {rangeX=0 depth=16777210 isDepth=0}}

en4=instance_create(__view_get( e__VW.XView, 0 )+320+16,182,oSneak)
with en4
{alarm[1]=10	canAttack=5 image_xscale=-1  enemy_switch("MR.SLINK",0)
	}
en5=instance_create(__view_get( e__VW.XView, 0 )-16,216,oSneak)
with en5{alarm[1]=10 canAttack=5 enemy_switch("MR.SLINK",0)}



}
else
timeline_position-=1

