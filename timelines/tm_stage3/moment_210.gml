/// @description /Make sure to only count the previous ones, otherwise you'll get an error.



if __view_get( e__VW.XView, 0 )>=532
{
en3=instance_create(__view_get( e__VW.XView, 0 )+320+16,182,oFemBurglar)
with en3
{alarm[1]=30	canAttack=3 image_xscale=-1
	}
en4=instance_create(__view_get( e__VW.XView, 0 )+320+16,216,oFemBurglar)
with en4{alarm[1]=30 canAttack=3 image_xscale=-1
enemy_modify(my_pal_sprite,4,"MS.CHILL",0,hp,maxhp)
}


}
else
{
timeline_position-=1
}

