/// @description Next
////Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=1158
{


	
en5=instance_create(__view_get( e__VW.XView, 0)-64-200,180,oEntryFenceJump)
with en5
{depth=16777214 isDepth=0 rangeXAdd=-48 xAdd=-200
}

en6=instance_create(__view_get( e__VW.XView, 0 )+320+16,242,oSneak)
with en6
{alarm[1]=10	canAttack=5 image_xscale=-1
	}
en7=instance_create(__view_get( e__VW.XView, 0 )+320-16,246,oSneak)
with en7{alarm[1]=10 canAttack=5}



}
else
timeline_position-=1

