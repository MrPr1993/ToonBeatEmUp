if oControl.ambushtime>=160
{
en5=enemy_ambusher(320-64,170,oNinjaBun,-1,1,32,20,1,1,0,11)
with en5 enemy_switch("NOUSAGI",1)
en6=enemy_ambusher(320-64,170+32,oNinjaBun,1,-1,32,20,1,1,0,11)
with en6 enemy_switch("NOUSAGI",1)
en7=enemy_ambusher(320-64,170+64,oNinjaBun,-1,1,32,20,1,1,0,11)
with en7 enemy_switch("NOUSAGI",1)
en8=enemy_ambusher(320-64,170+96,oNinjaBun,1,-1,32,20,1,1,0,11)
with en8 enemy_switch("NOUSAGI",1)
}
else
{
oControl.ambushtime++;
timeline_position-=1
}