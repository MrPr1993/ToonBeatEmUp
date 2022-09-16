/// @description Next
////Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=1158
{

en1=instance_create(__view_get( e__VW.XView, 0)-64,180,oEntryFenceJump)
with en1
{depth=16777214 isDepth=0
}
en2=instance_create(__view_get( e__VW.XView, 0)-64-100,180,oEntryFenceJump)
with en2
{depth=16777214 isDepth=0 rangeXAdd=48 xAdd=-100
		spawnFall=spr_burglarB_front
	moveSpr=spr_burglarB_run
	spawnEnemy=oEnemy1B}
	
en3=instance_create(__view_get( e__VW.XView, 0)-64-200,180,oEntryFenceJump)
with en3
{depth=16777214 isDepth=0 rangeXAdd=-48 xAdd=-200
}

en4=instance_create(__view_get( e__VW.XView, 0 )+320+16,242,oSneak)
with en4
{alarm[1]=10	canAttack=5 image_xscale=-1
	}
en5=instance_create(__view_get( e__VW.XView, 0 )+320-16,246,oSneak)
with en5{alarm[1]=10 canAttack=5}



}
else
timeline_position-=1

