if __view_get( e__VW.XView, 0 )>=3280-2-640-320-480-2
{

en1=instance_create(1594,448,oEntryClimb)
en1.z=-16*6 en1.rangeX=1594-200 en1.rangeXAdd=0
with en1
{spawnEnemy=oSneak
spawnSpr=spr_sneak_entry1
spawnFall=spr_sneak_front
}	

en2=instance_create(1654,448,oEntryClimb)
en2.z=-16*4 en2.rangeX=1654-200 en2.rangeXAdd=0

}
else
timeline_position-=1;