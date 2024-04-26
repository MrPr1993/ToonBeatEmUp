///@description Plane Area
specialSet8+=1

if specialSet8<30
timeline_position-=1
else
{specialSet8=0
with oControl
{
stageEndFX=0
stageIntro=1
oEnemySpawner.roomHSpd=0
oEnemySpawner.roomMove=0
oEnemySpawner.MaxX=4328+320
camMove=1
}


with oPlayer
{hspeed=0
image_xscale=1
areaEntry=0 z=-200 
canControl=1
canmove=0
	hurt=1
	ground=0
	zSpeed=0
	sentflying=0
	canBounce=0
	image_index=3 sprite_index=ThrownSpr
	animFrame=3
	anim=5
	thrownDMG=0

}

with sandstorm instance_destroy()
with quicksnd instance_destroy()
with quicksnd2 instance_destroy()
with oShadowFX visible^=1


spawner_followset("WaveSet1",0,4328+320,1)
}
