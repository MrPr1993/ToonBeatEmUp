/// @description Prepare Boss



if oPlayer.x>=2460-320+160
and oPlayer.ground=1 and oPlayer.atk=0 and oPlayer.dead=0 and oPlayer.hurt=0 
{
oPlayer.canControl=0
oPlayer.areaEntry=1
oPlayer.x=2460-160+32
with oPlayer
{key_right=0 doubledash=0 dashing=0
}

with oControl MusicFade=1
}
else
{
timeline_position-=1
}
