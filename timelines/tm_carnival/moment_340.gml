if __view_get( e__VW.XView, 0 )>=4938
{
en6=instance_create_depth(5288,196,-1,oMonk)
with en6
{image_xscale=-1
canAttack=5 alarm[1]=70
}
en7=instance_create_depth(5288,196+40,-1,oMonk)
with en7
{image_xscale=-1
canAttack=5 alarm[1]=70
}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )-32, 200,oMonk)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 200+32,oMonk)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )-32, 200+64,oMonk)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=1}}
////

}
else
timeline_position-=1;