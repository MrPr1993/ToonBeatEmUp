/// @description /Make sure to only count the previous ones, otherwise you'll get an error.

if __view_get( e__VW.XView, 0 )>=128
{
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,176,oSneak)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60
	weapon_add("TOMMYGUN")
	}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,192,oEnemy1B)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60}	

en3=instance_create(__view_get( e__VW.XView, 0)-64,224,oEnemy1)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60}

en4=instance_create(__view_get( e__VW.XView, 0)-64,270,oSneak)
with en4 {image_xscale=-1 canAttack=5 alarm[1]=60
		weapon_add("TOMMYGUN")
	}	

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0)+320+64,248,oEnemy1)
with P2en1 {image_xscale=-1 canAttack=5 alarm[1]=60}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0)+320+64,224,oEnemy1B)
with P2en2 {image_xscale=-1 canAttack=5 alarm[1]=60}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)+320+64,270,oEnemy1)
with P2en3 {image_xscale=-1 canAttack=5 alarm[1]=60}}
////

}
else
{
timeline_position-=1
}

