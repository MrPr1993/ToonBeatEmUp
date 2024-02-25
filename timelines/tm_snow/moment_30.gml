/// @description Baddies Appear 1

if __view_get( e__VW.XView, 0 )>=2640-2-320-640
{
en3=instance_create(__view_get( e__VW.XView, 0)-64,190,oEnemy1B)
with en3 {canAttack=5 alarm[1]=60}

en4=instance_create(__view_get( e__VW.XView, 0)+320+64,214,oSneak)
with en4 {canAttack=5 alarm[1]=60 image_xscale=-1}	

en5=instance_create(__view_get( e__VW.XView, 0)-64,238,oEnemy1)
with en5 { canAttack=5 alarm[1]=60
	enemy_modify(my_pal_sprite,2,"MR.LAR",0,0.24,0.24)
	}

en6=instance_create(__view_get( e__VW.XView, 0)+320+64,272,oSneak)
with en6 {image_xscale=-1 canAttack=5 alarm[1]=60
	
	}	

}
else
{
timeline_position-=1
}

