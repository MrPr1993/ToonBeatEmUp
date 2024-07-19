/// @description Fakeout

if oPlayer.ground=1 and oPlayer.atk=0 and oPlayer.dead=0 and oPlayer.hurt=0
{
oControl.stageclearfakeout=1
oPlayer.canControl=0
oPlayer.areaEntry=1

with oDastardly {canmove=0 AnimFrame=0 anim=101 specialanim=0}

with oPlayer
{key_right=0 doubledash=0 dashing=0
}
with oControl event_user(9)
}
else
{
timeline_position-=1
}

