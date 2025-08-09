if oControl.ambushtime>=100
{
en10=enemy_ambusher(320-64,170,oNinjaBun,-1,1,32,20,1,1,0,11)
with en10 enemy_switch("NOUSAGI",1)
en11=enemy_ambusher(320-64,170+32,oNinjaBun,-1,1,32,20,1,1,0,11)
with en11 enemy_switch("NOUSAGI",1)
en12=enemy_ambusher(320-64,170+64,oNinjaBun,-1,1,32,20,1,1,0,11)
with en12 enemy_switch("NOUSAGI",1)
en13=enemy_ambusher(320-64,170+96,oNinjaBun,-1,1,32,20,1,1,0,11)
with en13 enemy_switch("NOUSAGI",1)
}
else
{
oControl.ambushtime++;
timeline_position-=1
}
