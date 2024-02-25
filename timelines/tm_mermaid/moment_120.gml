/// @description Merfolk!

if __view_get( e__VW.XView, 0 )>=3180-2
{
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,190,oMerman)
with en1 {image_xscale=-1 ground=0 
	image_xscale=-1 canAttack=5 alarm[1]=60 weapon_add("SPEAR")
	}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,234,oMerman)
with en2 {image_xscale=-1 ground=0 
	image_xscale=-1 canAttack=5 alarm[1]=60 weapon_add("SPEAR")
	}

}
else
timeline_position-=1
