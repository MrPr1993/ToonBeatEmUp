/// @description Next
////Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=1158
{
en1=enemy_ambusher(0,240,oEnemy1,-1,-1,32,10,2,0,0,595000)
////
if playernumber>=2 {P2en1=enemy_ambusher(0,240-32,oEnemy1,-1,-1,32,10,2,0,0,595000)}
if playernumber>=3 {P2en2=enemy_ambusher(0,240+32,oEnemy1,-1,-1,32,10,2,0,0,595000)}
if playernumber>=4 {P2en3=enemy_ambusher(0,240+64,oEnemy1,-1,-1,32,10,2,0,0,595000)}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200+32,oEnemy1B)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200+64,oEnemy1)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}
////
}
else
timeline_position-=1

