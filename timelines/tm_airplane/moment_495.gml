if oControl.ambushtime>=160
{
en8=enemy_ambusher(0,160,oSwing,1,-1,32,20,1,1,0,132)
with en8 {weapon_add("KNIFE") enemy_switch("MS.BRAN",1)}
en9=enemy_ambusher(0,160+32,oSwing,1,-1,32,20,1,0,0,132)
with en9 {weapon_add("KNIFE") enemy_switch("MS.BRAN",1)}
en10=enemy_ambusher(0,160+64,oSwing,1,-1,32,20,1,1,0,132)
with en10 {weapon_add("KNIFE") enemy_switch("MS.BRAN",1)}
}
else
{
oControl.ambushtime++;
timeline_position-=1
}