/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=2560-320
{
en2=instance_create(__view_get( e__VW.XView, 0 )+320+16,176,oFemBurglar)
with en2
{alarm[1]=2	
	}
en3=instance_create(__view_get( e__VW.XView, 0 )+320+16,192,oFemBurglar)
with en3{alarm[1]=2	
enemy_switch("MS.CHILL",0)}
}
else
{
timeline_position-=1
}

