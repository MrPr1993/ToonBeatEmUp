/// @description Baddies Appear 7 - Castle start

if __view_get( e__VW.XView, 0 )>=7440-2-320
{
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,250-10,oPlant)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("FOLI",0)}	

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,250+10,oPlant)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("FOLI",0)}		

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0)+320+64,250-20,oPlant)
with P2en1 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("FOLI",0)}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0)+320+64,250+20,oPlant)
with P2en2 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("FOLI",0)}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)+320+64,250+30,oPlant)
with P2en3 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("FOLI",0)}}
////



}
else
{
timeline_position-=1
}

////For castle area
//6916 - Book Area
//7566 - Edge of Table
//8206 - More Table - Furniture
//8846 - Boss Area
//
//
//