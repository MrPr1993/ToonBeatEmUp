/// @description Start

if oPlayer.ground
{
	musicplaystart(msc_train)

oPlayer.canControl=1
oPlayer.areaEntry=0
oPlayer.Immune=0
oPlayer.hasShadow=1
oEnemySpawner.roomHSpd=0
oEnemySpawner.roomMove=0
oControl.camMove=1
with oControl
spawner_followset("WaveSet1",0,1298,1)

with oControl{showMap=1
alarm[0]=60 timecheck=-1}





with oPlayer
{	
canmove=1 canControl=1}
}
else
{
timeline_position-=2
with oPlayer
{hspeed=0 canControl=0 key_right=0 key_left=0 hasShadow=1
	//x=__view_get( e__VW.XView, 0 )+160
	//y=__view_get( e__VW.YView, 0 )+180
		
}
}



