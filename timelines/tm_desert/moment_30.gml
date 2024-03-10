/// @description Enemy Area

if __view_get( e__VW.XView, 0 )>=1556-2
{
en8=instance_create(__view_get( e__VW.XView, 0)+320+96,200+24,oStrongBurg)
with en8 {image_xscale=-1 canAttack=5 alarm[1]=60
	enemy_switch("MR.DALE",0)
	}
}
else
timeline_position-=1
