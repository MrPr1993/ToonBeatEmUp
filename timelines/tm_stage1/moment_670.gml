/// @description Prepare Boss

with oControl
{timecheck=alarm[0] alarm[0]=10000000}

if oPlayer.x>=2847+320+64
and oPlayer.ground=1 and oPlayer.atk=0 and oPlayer.dead=0 and oPlayer.hurt=0
{
oPlayer.canControl=0
oPlayer.areaEntry=1


with oPlayer
{key_right=0 doubledash=0 dashing=0

}

if instance_number(oPlayer)!=1
with oPlayer
{
y=oControl.wallY+16*controlNO
}


with oControl MusicFade=1
}
else
{
timeline_position-=1
}

