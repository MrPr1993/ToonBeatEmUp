

if __view_get( e__VW.XView, 0 )>=3702-320
{
en7=enemy_ambusher(0,176,oSwing,-1,1,32,20,2,0,0,132)
with en7 {weapon_add("DYNAMITE") enemy_switch("MS.BOOM",0)}
en8=enemy_ambusher(0,176+16,oSwing,-1,1,32,20,2,0,0,132)
with en8 {weapon_add("DYNAMITE") enemy_switch("MS.BOOM",0)}
en9=enemy_ambusher(0,176+32,oSwing,-1,1,32,20,2,0,0,132)
with en9 {weapon_add("DYNAMITE") enemy_switch("MS.BOOM",0)}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 166,oEnemy1)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 166+24,oEnemy1B)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 166+48,oEnemy1)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}
////
}
else
{
timeline_position-=1
}
