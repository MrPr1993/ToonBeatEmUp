/// @description NEXT
////Make sure to only count the previous ones, otherwise you'll get an error.
if oBoss1a.x>2054+64
{with oBoss1a instance_destroy()
	
en1=instance_create_depth(2134,160,-1,oEntryClimb) en1.z=-64 en1.rangeX=2134-240 en1.rangeXAdd=0
en3=instance_create_depth(2178,160,-1,oEntryClimb) en3.z=-64 en3.rangeX=2134-240 en3.rangeXAdd=0
	
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
 
with oEnemySpawner if selfID="WaveSet1"
{wave=0 image_xscale=51.25
}

spawner_followset("WaveSet1",0,2600,1)

}
else
timeline_position-=1
