/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=2560-320
{
en1=instance_create(__view_get( e__VW.XView, 0 )+320+16,192,oFemBurglar)
with en1
{alarm[1]=30 canAttack=5 image_xscale=-1
	}
en2=instance_create(__view_get( e__VW.XView, 0 )-16,192+64,oFemBurglar)
with en2{alarm[1]=30  canAttack=5
enemy_switch("MS.CHILL",0)}

}
else
{
timeline_position-=1
}


