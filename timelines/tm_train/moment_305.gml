if oControl.ambushtime>=160
{
en2=enemy_ambusher(0,176,oSwing,-1,1,32,20,1,1,0,132)
with en2 {weapon_add("KNIFE") enemy_switch("MS.BRAN",1)}
en3=enemy_ambusher(0,176+16,oSwing,-1,1,32,20,1,1,0,132)
with en3 {weapon_add("KNIFE")  enemy_switch("MS.BRAN",1)}
en4=enemy_ambusher(0,176+32,oSwing,-1,1,32,20,1,1,0,132)
with en4 {weapon_add("KNIFE")  enemy_switch("MS.BRAN",1)}
}
else
{
oControl.ambushtime++;
timeline_position-=1
}
