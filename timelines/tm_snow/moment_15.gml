/// @description /Make sure to only count the previous ones, otherwise you'll get an error.

if __view_get( e__VW.XView, 0 )>=594
{
en5=instance_create(__view_get( e__VW.XView, 0)+320+64,200,oNinjaBun)
with en5 {image_xscale=-1 canAttack=5 alarm[1]=60
	}


en6=instance_create(__view_get( e__VW.XView, 0)+320+64,200+64,oNinjaBun)
with en6 {image_xscale=-1 canAttack=5 alarm[1]=60}	


////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )-32, 200,oNinjaBun)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 232,oNinjaBun)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )-32, 264,oNinjaBun)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=1}}
////

}///596
else
{
timeline_position-=1
}

