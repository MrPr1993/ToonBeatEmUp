if oControl.ambushtime>=80
{
en12=enemy_ambusher(0,180,oMartian,1,-1,32,20,1,1,0,1340)
with en12 {enemy_switch("EXTA",1) weapon_add("LASERGUN")}
en13=enemy_ambusher(0,180+32,oMartian,-1,1,32,20,1,1,0,1340)
with en13 {enemy_switch("EXTA",1) weapon_add("LASERGUN")}
en14=enemy_ambusher(0,180+64,oMartian,1,-1,32,20,1,1,0,1340)
with en14 {enemy_switch("EXTA",1) weapon_add("LASERGUN")}
en15=enemy_ambusher(0,180+96,oMartian,-1,1,32,20,1,1,0,1340)
with en15 {enemy_switch("EXTA",1) weapon_add("LASERGUN")}
}
else
{
oControl.ambushtime++;
timeline_position-=1
}