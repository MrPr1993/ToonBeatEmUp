/// @description Merfolk!

if __view_get( e__VW.XView, 0 )>=3180-2
{
var _weak=1; if playernumber>=2 _weak=0;
en1=enemy_ambusher(320-64,184,oMerman,-1,1,32,20,1+1-_weak,_weak,0,13)
with en1 {weapon_add("SPEAR")}
var _weak=1;  if playernumber>=4 _weak=0;
en2=enemy_ambusher(320-64,184+32,oMerman,-1,1,32,20,1+1-_weak,_weak,0,13)
with en2 {weapon_add("SPEAR")}

en3=enemy_ambusher(320-64,184+64,oMerman,-1,1,32,20,2,0,0,13)
with en3 {weapon_add("SPEAR")}

var _weak=1;  if playernumber>=3 _weak=0;
en4=enemy_ambusher(320-64,184+96,oMerman,-1,1,32,20,1+1-_weak,_weak,0,13)
with en4 {weapon_add("SPEAR")}




}
else
timeline_position-=1
