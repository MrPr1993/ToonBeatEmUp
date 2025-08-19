if  !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
and !instance_exists(en7)
and !instance_exists(en8)
{
en3=enemy_ambusher(0,176,oSwing,1,-1,32,20,1,1,0,132)
with en3 {weapon_add("KNIFE") enemy_switch("MS.BRAN",1)}
en4=enemy_ambusher(0,176+16,oSwing,1,-1,32,20,1,1,0,132)
with en4 {weapon_add("KNIFE") enemy_switch("MS.BRAN",1)}
en5=enemy_ambusher(0,176+32,oSwing,1,-1,32,20,1,1,0,132)
with en5 {weapon_add("KNIFE") enemy_switch("MS.BRAN",1)}
en6=enemy_ambusher(0,176+48,oSwing,1,-1,32,20,1,1,0,132)
with en6 {weapon_add("KNIFE") enemy_switch("MS.BRAN",1)}
en7=enemy_ambusher(0,176+64,oSwing,1,-1,32,20,1,1,0,132)
with en7 {weapon_add("KNIFE") enemy_switch("MS.BRAN",1)}
en8=enemy_ambusher(0,176+80,oSwing,1,-1,32,20,1,1,0,132)
with en8 {weapon_add("KNIFE") enemy_switch("MS.BRAN",1)}
}
else timeline_position-=1