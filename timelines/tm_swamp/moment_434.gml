///@description Plane Area
//if oPlayer.ground and oPlayer.anim!=21
if oPlayer.ground and oPlayer.anim!=21
{
oEnemySpawner.roomHSpd=8

with oPlayer
{
key_right=1
ground=0 spdZ=-8 hspeed=4 zSpeed=-16

vehSpr=spr_boat vehWSpr=spr_emptyarea
carMode=1; anim=200 canmove=0
}

PlaySound(snd_break2)

with oControl
{
vehSpr=spr_boat vehWSpr=spr_emptyarea
}

spawner_followset("WaveSet1",0,3264+160,1)

}
else
timeline_position-=1