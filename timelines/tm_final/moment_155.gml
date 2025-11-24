if oControl.ambushtime>=80
{
en14=enemy_ambusher(0,176,oSwing,1,-1,32,20,1,1,0,132)
with en14 {weapon_add("KNIFE") enemy_switch("MS.BRAN",1)}
en15=enemy_ambusher(0,176+16,oSwing,1,-1,32,20,1,1,0,132)
with en15 {weapon_add("KNIFE") enemy_switch("MS.BRAN",1)}
en16=enemy_ambusher(0,176+32,oSwing,1,-1,32,20,1,1,0,132)
with en16 {weapon_add("KNIFE") enemy_switch("MS.BRAN",1)}
en17=enemy_ambusher(0,176+48,oSwing,1,-1,32,20,1,1,0,132)
with en17 {weapon_add("KNIFE") enemy_switch("MS.BRAN",1)}
en18=enemy_ambusher(0,176+64,oSwing,1,-1,32,20,1,1,0,132)
with en18 {weapon_add("KNIFE") enemy_switch("MS.BRAN",1)}
en19=enemy_ambusher(0,176+80,oSwing,1,-1,32,20,1,1,0,132)
with en19 {weapon_add("KNIFE") enemy_switch("MS.BRAN",1)}
}
else
{
oControl.ambushtime++;
timeline_position-=1
}