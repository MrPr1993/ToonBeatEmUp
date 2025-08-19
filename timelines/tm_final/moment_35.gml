if oControl.ambushtime>=80
{
en17=enemy_ambusher(0,176,oSwing,-1,1,32,20,1,1,0,132)
with en17 {weapon_add("DYNAMITE") enemy_switch("MS.BOOM",1)}
//en18=enemy_ambusher(0,176+16,oSwing,-1,1,32,20,1,1,0,132)
//with en18 {weapon_add("DYNAMITE") enemy_switch("MS.BOOM",1)}
en19=enemy_ambusher(0,176+32,oSwing,-1,1,32,20,1,1,0,132)
with en19 {weapon_add("DYNAMITE") enemy_switch("MS.BOOM",1)}
//en20=enemy_ambusher(0,176+48,oSwing,-1,1,32,20,1,1,0,132)
//with en20 {weapon_add("DYNAMITE") enemy_switch("MS.BOOM",1)}
en21=enemy_ambusher(0,176+64,oSwing,-1,1,32,20,1,1,0,132)
with en21 {weapon_add("DYNAMITE") enemy_switch("MS.BOOM",1)}
//en22=enemy_ambusher(0,176+80,oSwing,-1,1,32,20,1,1,0,132)
//with en22 {weapon_add("DYNAMITE") enemy_switch("MS.BOOM",1)}
}
else
{
oControl.ambushtime++;
timeline_position-=1
}