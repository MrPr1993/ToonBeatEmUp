/// @description 

if __view_get( e__VW.XView, 0 )>=3280-2-320-320
{
en3=instance_create(__view_get( e__VW.XView, 0)+320+64,200+24,oEnemy1)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60}

en4=instance_create(__view_get( e__VW.XView, 0)+320+64,200+64,oSneak)
with en4 {image_xscale=-1 canAttack=5 alarm[1]=60
	canAttack=5 image_xscale=-1 alarm[1]=30 weapon_add("TOMMYGUN")
	}

}
else
{
timeline_position-=1
}

