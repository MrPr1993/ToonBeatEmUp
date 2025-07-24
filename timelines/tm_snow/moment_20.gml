if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1; ambushtime=0; alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,2640-640,1)

en1=instance_create(1184, 194,oEntryPool) en1.rangeXAdd=0 en1.splashspr=spr_snowsplash
with en1
{spawnSpr=spr_ninjabun_front spawnFall=spr_ninjabun_front enemy_switch("KONI",0) spawnEnemy=oNinjaBun  xAdd=-70 rangeX=x-160 z=-2}

en2=instance_create(1184+64, 194,oEntryPool) en2.rangeXAdd=0 en2.splashspr=spr_snowsplash
with en2
{spawnSpr=spr_ninjabun_front spawnFall=spr_ninjabun_front enemy_switch("KONI",0) spawnEnemy=oNinjaBun  xAdd=-70 rangeX=x-160 z=-2}


}
else
timeline_position-=1;