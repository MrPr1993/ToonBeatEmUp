/// @description Next
////Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=1158
{

en1=enemy_ambusher(0,192,oSwing,1,-1,32,10,2,0,0,132)
with en1 {weapon_add("DYNAMITE") enemy_switch("MS.THRU",1)}	
en2=enemy_ambusher(0,192+32,oSwing,1,-1,32,10,2,0,0,132)
with en2 {weapon_add("DYNAMITE") enemy_switch("MS.THRU",1)}	
en3=enemy_ambusher(0,192+64,oSwing,1,-1,32,10,2,0,0,132)
with en3 {weapon_add("DYNAMITE") enemy_switch("MS.THRU",1)}	

}
else
timeline_position-=1

