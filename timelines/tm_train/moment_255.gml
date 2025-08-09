if oControl.ambushtime>=160
{
en5=enemy_ambusher(0,176,oSwing,1,-1,32,20,1,1,0,132)
with en5 {weapon_add("KNIFE") enemy_switch("MS.BRAN",1)}
en6=enemy_ambusher(0,176+16,oSwing,1,-1,32,20,1,1,0,132)
with en6 {weapon_add("KNIFE")  enemy_switch("MS.BRAN",1)}
en7=enemy_ambusher(0,176+32,oSwing,1,-1,32,20,1,1,0,132)
with en7 {weapon_add("KNIFE")  enemy_switch("MS.BRAN",1)}
}
else
{
oControl.ambushtime++;
timeline_position-=1
}