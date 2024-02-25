/// @description Baddies Appear 1

if __view_get( e__VW.XView, 0 )>=2640-2-320-160
{
en3=instance_create(__view_get( e__VW.XView, 0)+320+64,208-24,oSneak)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=30 weapon_add("TOMMYGUN")
	alarm[1]=30 canAttack5Move=10
	}

en4=instance_create(__view_get( e__VW.XView, 0)+320+64,208+24,oSneak)
with en4 {image_xscale=-1 canAttack=5 alarm[1]=30 weapon_add("TOMMYGUN")
	alarm[1]=30 canAttack5Move=10
	}


}
else
{
timeline_position-=1
}

