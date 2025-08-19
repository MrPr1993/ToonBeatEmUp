if oControl.ambushtime>=80
{
en9=enemy_ambusher(0,176,oSwing,1,-1,32,20,1,1,0,132)
with en9 {weapon_add("KNIFE") enemy_switch("MS.BRAN",1)}
en10=enemy_ambusher(0,176+16,oSwing,1,-1,32,20,1,1,0,132)
with en10 {weapon_add("KNIFE") enemy_switch("MS.BRAN",1)}
en11=enemy_ambusher(0,176+32,oSwing,1,-1,32,20,1,1,0,132)
with en11 {weapon_add("KNIFE") enemy_switch("MS.BRAN",1)}
en12=enemy_ambusher(0,176+48,oSwing,1,-1,32,20,1,1,0,132)
with en12 {weapon_add("KNIFE") enemy_switch("MS.BRAN",1)}
en13=enemy_ambusher(0,176+64,oSwing,1,-1,32,20,1,1,0,132)
with en13 {weapon_add("KNIFE") enemy_switch("MS.BRAN",1)}
en14=enemy_ambusher(0,176+80,oSwing,1,-1,32,20,1,1,0,132)
with en14 {weapon_add("KNIFE") enemy_switch("MS.BRAN",1)}
}
else
{
oControl.ambushtime++;
timeline_position-=1
}