if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,3280,1)


en1=instance_create(1184, 194,oEntryJump) en1.rangeXAdd=0
with en1
{spawnSpr=spr_monk_jump spawnEnemy=oMonk xAdd=-70 rangeX=x-160}

en2=instance_create(1184+64, 194,oEntryJump) en2.rangeXAdd=0
with en2
{spawnSpr=spr_monk_jump spawnEnemy=oMonk xAdd=-70 rangeX=x-160}


}
else
timeline_position-=1;