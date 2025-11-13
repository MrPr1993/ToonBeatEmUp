/// @description Stage Starting
spawner_followset("WaveSet1",0,692+224,1)

oControl.stageNext=rm_cutscene6c

////Skip to Plane
//spawner_followset("WaveSet1",0,5800,1)
//oPlayer.x=5000
//timeline_position=449


oPlayer.x-=64
oPlayer.hspeed=0
oPlayer.key_right=0
oPlayer.y=232

oPlayer.visible=0
oPlayer.alarm[0]=0
oPlayer.canControl=0

timer_set(1)

oControl.specialcheck0=90