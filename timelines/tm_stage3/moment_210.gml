/// @description /Make sure to only count the previous ones, otherwise you'll get an error.



if __view_get( e__VW.XView, 0 )>=532
{
en3=enemy_ambusher(0,182,oSwing,-1,1,32,30,1,1,0,132)
with en3 {weapon_add("KNIFE") enemy_switch("MS.BRAN",1)}	

en4=enemy_ambusher(0,216,oSwing,-1,1,32,30,1,1,0,132)
with en4 {weapon_add("KNIFE") enemy_switch("MS.BRAN",1)}	

}
else
{
timeline_position-=1
}

