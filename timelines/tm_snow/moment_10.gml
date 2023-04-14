/// @description /Make sure to only count the previous ones, otherwise you'll get an error.

if __view_get( e__VW.XView, 0 )>=128
{
en3=instance_create(__view_get( e__VW.XView, 0)+320+64,200,oFemBurglar)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60
	}


en4=instance_create(__view_get( e__VW.XView, 0)+320+64,200+64,oFemBurglar)
with en4 {image_xscale=-1 canAttack=5 alarm[1]=60
enemy_modify(my_pal_sprite,4,"MS.CHILL",0,hp,maxhp)
	}	

}
else
{
timeline_position-=1
}

