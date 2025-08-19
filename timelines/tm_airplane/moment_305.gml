

if oControl.ambushtime>=160
{
en4=enemy_ambusher(0,160,oSwing,-1,1,32,20,1,1,0,132)
with en4 {weapon_add("DYNAMITE") enemy_switch("MS.BOOM",0)}
en5=enemy_ambusher(0,160+32,oSwing,-1,1,32,20,2,0,0,132)
with en5 {weapon_add("DYNAMITE") enemy_switch("MS.BOOM",0)}
en6=enemy_ambusher(0,160+64,oSwing,-1,1,32,20,1,1,0,132)
with en6 {weapon_add("DYNAMITE") enemy_switch("MS.BOOM",0)}

}
else
{
oControl.ambushtime++;
timeline_position-=1
}