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
oEnemySpawner.MaxX=5744
camMove=1
}
with oPlayer
{hspeed=0
x=5476
y=208
areaEntry=0
}
spawner_followset("WaveSet1",0,5744,1)


}
