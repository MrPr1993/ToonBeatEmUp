/// @description Merfolk!

if __view_get( e__VW.XView, 0 )>=3180-2
{

	
en1=enemy_ambusher(0,190,oMerman,-1,1,32,10,1,1,0,13) with en1 weapon_add("SPEAR")
en2=enemy_ambusher(0,190+32,oMerman,-1,1,32,10,1,0,0,13) with en2 weapon_add("SPEAR")
en3=enemy_ambusher(0,190+64,oMerman,-1,1,32,10,1,1,0,13) with en3 weapon_add("SPEAR")



}
else
timeline_position-=1
