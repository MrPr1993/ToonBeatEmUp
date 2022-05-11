if oPlayer.x<300
timeline_position-=1
else
{
with oPlayer 
{//x=160 y=200
canControl=0
ground=0
zSpeed=-16
PlaySound(snd_swing) key_right=0 key_left=0 key_up=0 key_down=0
hspeed=8
vspeed=0 with oControl specialSet8=0
}
with oControl
{

stageEndFX=1 specialSet8=0
}
}
