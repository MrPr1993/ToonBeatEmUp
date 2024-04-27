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
oEnemySpawner.MaxX=6592
oEnemySpawner.YView=0
camMove=1
MusicFade=0 MusicFadeAdd=1
musicplaystart(msc_boss3)
alarm[0]=180
}

boss=instance_create_depth(6430,154,-1,oPrince)
with boss {canmove=0 anim=100}

PlaySound(snd_fall)

with oPlayer
{hspeed=0
	
	 image_xscale=1
canBounce=0
areaEntry=0 z=-400 
//canControl=1
canmove=0
	hurt=1
	ground=0
	zSpeed=0
	sentflying=0
	image_index=3 sprite_index=ThrownSpr
	animFrame=3
	anim=5
	thrownDMG=0

}

spawner_followset("WaveSet1",0,6592,1)
}
