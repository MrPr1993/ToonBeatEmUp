/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=1744
{
en7=instance_create(__view_get( e__VW.XView, 0 )+320+16,176,oFemBurglar)
with en7
{alarm[1]=2	
	}
en8=instance_create(__view_get( e__VW.XView, 0 )+320+16,192,oFemBurglar)
with en8{alarm[1]=2	
enemy_modify(my_pal_sprite,4,"MS.CHILL",0,hp,maxhp)}
en9=instance_create(__view_get( e__VW.XView, 0 )-32,192,oSneak)
}
else
{
timeline_position-=1
}

