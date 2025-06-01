/// @description /Make sure to only count the previous ones, otherwise you'll get an error.



if __view_get( e__VW.XView, 0 )>=532
{
var _weak=1; if playernumber>=2 _weak=0;
en3=enemy_ambusher(320-64,184,oSwing,-1,1,32,30,1+1-_weak,_weak,0,132)
with en3 {weapon_add("KNIFE") enemy_switch("MS.BRAN",1)}
var _weak=1;  if playernumber>=4 _weak=0;
en4=enemy_ambusher(320-64,184+16,oSwing,-1,1,32,30,1+1-_weak,_weak,0,132)
with en4 {weapon_add("KNIFE") enemy_switch("MS.BRAN",1)}

en5=enemy_ambusher(320-64,184+32,oSwing,-1,1,32,30,2,0,0,132)
with en5 {weapon_add("KNIFE") enemy_switch("MS.BRAN",1)}

var _weak=1;  if playernumber>=3 _weak=0;
en6=enemy_ambusher(320-64,184+48,oSwing,-1,1,32,30,1+1-_weak,_weak,0,132)
with en6 {weapon_add("KNIFE") enemy_switch("MS.BRAN",1)}

}
else
{
timeline_position-=1
}

