/// @description Baddies Appear 9

if __view_get( e__VW.XView, 0 )>=10980-2-320
{
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,180,oAlienRobot)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60
	 enemy_modify(my_pal_sprite,1,"DESTRON",0,0.4,0.4)
	}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,200,oAlienRobot)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60}	

en3=instance_create(__view_get( e__VW.XView, 0)+320+64,220,oAlienRobot)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60
	 enemy_modify(my_pal_sprite,1,"DESTRON",0,0.4,0.4)
	}	

en4=instance_create(__view_get( e__VW.XView, 0)+320+64,240,oAlienRobot)
with en4 {image_xscale=-1 canAttack=5 alarm[1]=60}	

}
else
{
timeline_position-=1
}

