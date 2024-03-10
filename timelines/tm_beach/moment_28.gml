if __view_get( e__VW.XView, 0 )>=2640-2-320-640-320
{
en5=enemy_ambusher(0,176,oSwing,-1,1,32,10,1,1,0,1340)
with en5 {weapon_add("HANDGUN") enemy_switch("MS.TRIG",1)}

en6=enemy_ambusher(0,176+32,oSwing,-1,1,32,10,1,1,0,1340)
with en6 {weapon_add("HANDGUN") enemy_switch("MS.TRIG",1)}

en7=enemy_ambusher(0,176+64,oSwing,-1,1,32,10,1,1,0,1340)
with en7 {weapon_add("HANDGUN") enemy_switch("MS.TRIG",1)}
}