/// @description Baddies Appear 3

if __view_get( e__VW.XView, 0 )>=3280-2-320
{
en1=instance_create(__view_get( e__VW.XView, 0)+320-64,200+24,oFairy)
with en1 {image_xscale=-1 ground=0 canmove=0 anim=13 z=-200}

en2=instance_create(__view_get( e__VW.XView, 0)+320-64,200+64,oFairy)
with en2 {image_xscale=-1 ground=0 canmove=0 anim=13 z=-200
	enemy_modify(my_pal_sprite,1,"WENDY",0,0.5,0.5)
	}	

en3=instance_create(__view_get( e__VW.XView, 0)-64,200+24,oHarpyE)
with en3 {image_xscale=1 canAttack=5 alarm[1]=60
		enemy_modify(spr_zombiepal,2,"ICARA",0,0.5,0.5)
	}

}
else
{
timeline_position-=1
}

