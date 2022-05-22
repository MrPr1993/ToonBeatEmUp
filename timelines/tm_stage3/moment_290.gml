/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=1900+200
{
en2=instance_create(__view_get( e__VW.XView, 0 )+320+16,176,oFemBurglar)
with en2
{alarm[1]=2	
	}
en3=instance_create(__view_get( e__VW.XView, 0 )+320+16,192,oFemBurglar)
with en3{alarm[1]=2	
enemy_modify(my_pal_sprite,4,"MS.CHILL",0,hp,maxhp)}
}
else
{
timeline_position-=1
}

