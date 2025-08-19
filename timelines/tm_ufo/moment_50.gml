/// @description Baddies Appear 2
{
if __view_get( e__VW.XView, 0 )>=2640-2-320-160
{
if specialSet8=0
{specialSet8=1
en1=instance_create(oControl.camX+320+32,176,oMartian)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60}
en2=instance_create(oControl.camX+320+32,240,oMartian)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60}	
}
}
else
{timeline_position-=1 exit;}

if __view_get( e__VW.XView, 0 )>=2640-2-320
{
en6=enemy_ambusher(0,180,oMartian,-1,1,32,20,1,1,0,1340)
with en6 {enemy_switch("EXTA",1) weapon_add("LASERGUN")}
en7=enemy_ambusher(0,180+32,oMartian,-1,1,32,20,1,1,0,1340)
with en7 {enemy_switch("EXTA",1) weapon_add("LASERGUN")}
en8=enemy_ambusher(0,180+64,oMartian,-1,1,32,20,1,1,0,1340)
with en8 {enemy_switch("EXTA",1) weapon_add("LASERGUN")}
en9=enemy_ambusher(0,180+96,oMartian,-1,1,32,20,1,1,0,1340)
with en9 {enemy_switch("EXTA",1) weapon_add("LASERGUN")}



}
else
timeline_position-=1
}

