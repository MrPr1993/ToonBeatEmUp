/// @description Baddies Appear 1

if __view_get( e__VW.XView, 0 )>=2640-2-320-640
{
en3=instance_create(__view_get( e__VW.XView, 0)+320-64,200+24,oEnemy1)
with en3 {canAttack=5 alarm[1]=60}

en4=instance_create(__view_get( e__VW.XView, 0)+320-64,200+64,oSneak)
with en4 {canAttack=5 alarm[1]=60}	

en5=instance_create(__view_get( e__VW.XView, 0)+320+64,200+24,oEnemy1)
with en5 {image_xscale=-1 canAttack=5 alarm[1]=60
	enemy_modify(my_pal_sprite,6,"MR.LAR",0,0.24,0.24)
	}

en6=instance_create(__view_get( e__VW.XView, 0)+320+64,200+64,oSneak)
with en6 {image_xscale=-1 canAttack=5 alarm[1]=60
	
	}	

}
else
{
timeline_position-=1
}

