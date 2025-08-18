/// @description /Skeletons
if __view_get( e__VW.XView, 0 )>=2560-320
{



////
if playernumber>=3 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 182+16,oSkeleton)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=-1}}

en7=instance_create(__view_get( e__VW.XView, 0 )+320+24, 182+32,oKnight) with en7
{canAttack=5 alarm[0]=60 image_xscale=-1}

if playernumber>=2 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 182+64,oKnight)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=-1}}

//en8=instance_create(__view_get( e__VW.XView, 0 )+320+24, 182+64,oKnight) with en8
//{canAttack=5 alarm[0]=60 image_xscale=-1 }

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 182+80,oSkeleton)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}
////

}
else
{
timeline_position-=1
}

