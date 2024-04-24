

if __view_get( e__VW.XView, 0 )>=3702-320
{
en7=enemy_ambusher(0,176,oSwing,-1,1,32,20,1,1,0,132)
with en7 {weapon_add("DYNAMITE") enemy_switch("MS.THRU",1)}
en8=enemy_ambusher(0,176+16,oSwing,-1,1,32,20,1,1,0,132)
with en8 {weapon_add("DYNAMITE") enemy_switch("MS.THRU",1)}
en9=enemy_ambusher(0,176+32,oSwing,-1,1,32,20,1,1,0,132)
with en9 {weapon_add("DYNAMITE") enemy_switch("MS.THRU",1)}
}
else
{
timeline_position-=1
}
