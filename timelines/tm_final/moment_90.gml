/// @description Baddies Appear 4

if __view_get( e__VW.XView, 0 )>=6340-2-320
{
en6=instance_create(__view_get( e__VW.XView, 0)+320+64,164,oSwing)
with en6 {image_xscale=-1 canAttack=5 alarm[1]=60
	enemy_switch("MS.DOMI",0) weapon_add("WHIP") 
	}
	
en7=instance_create(__view_get( e__VW.XView, 0)+320+96,274,oSwing)
with en7 {image_xscale=-1 canAttack=5 alarm[1]=90
	enemy_switch("MS.DOMI",0) weapon_add("WHIP") 
	}	
	
	en7=instance_create(__view_get( e__VW.XView, 0)+320+64,224,oStrongBurg)
with en7 {image_xscale=-1 canAttack=5 alarm[1]=60
	enemy_switch("MR.DALE",0)
	}
	
////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0)+320+64,254,oStrongBurg)
with P2en1 {enemy_switch("MR.DALE",0) image_xscale=-1 canAttack=5 alarm[1]=90}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0)+320+64,174,oSwing)
with P2en2 {enemy_switch("MS.DOMI",0) weapon_add("WHIP")  image_xscale=-1 canAttack=5 alarm[1]=60}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)+320+64,264,oSwing)
with P2en3 {enemy_switch("MS.DOMI",0) weapon_add("WHIP")  image_xscale=-1 canAttack=5 alarm[1]=60}}
////



}
else
{
timeline_position-=1
}

