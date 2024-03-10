/// @description Baddies Appear 6

if __view_get( e__VW.XView, 0 )>=5840-2-320-320
{

en3=instance_create(__view_get( e__VW.XView, 0)-64,200+24,oSkeleton)
with en3 {image_xscale=1 canAttack=5 alarm[1]=60}

en4=instance_create(__view_get( e__VW.XView, 0)-64,200+64,oSkeleton)
with en4 {image_xscale=1 canAttack=5 alarm[1]=60 enemy_switch("SKELIE",0)}	

en5=instance_create(__view_get( e__VW.XView, 0)+320+64,200+24,oSkeleton)
with en5 {image_xscale=-1 canAttack=5 alarm[1]=60}

en6=instance_create(__view_get( e__VW.XView, 0)+320+64,200+64,oSkeleton)
with en6 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("SKELIE",0)	}	
}
else
{
timeline_position-=1
}

