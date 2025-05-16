if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
{
var _weak=1; if oControl.playerAmount>=2 _weak=0;
en1=enemy_ambusher(320-64,170,oNinjaBun,-1,1,32,20,1+1-_weak,_weak,0,11)
with en1 enemy_switch("NOUSAGI",1)
var _weak=1;  if oControl.playerAmount>=4 _weak=0;
en2=enemy_ambusher(320-64,170+32,oNinjaBun,-1,1,32,20,1+1-_weak,_weak,0,11)
with en2 enemy_switch("NOUSAGI",1)

en3=enemy_ambusher(320-64,170+64,oNinjaBun,-1,1,32,20,2,0,0,11)
with en3 enemy_switch("NOUSAGI",0)
var _weak=1;  if oControl.playerAmount>=3 _weak=0;
en4=enemy_ambusher(320-64,170+96,oNinjaBun,-1,1,32,20,1+1-_weak,_weak,0,11)
with en4 enemy_switch("NOUSAGI",1)
}
else
timeline_position-=1