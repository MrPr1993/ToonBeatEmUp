/// @description Freeze Player's Controls

if oPlayer.ground=1 and oPlayer.atk=0 and oPlayer.dead=0 and oPlayer.hurt=0
{
oPlayer.canControl=0
oPlayer.areaEntry=1

with oPlayer
{key_right=0 doubledash=0 dashing=0
}
with oControl {oControl.stageNext=rm_stage3 event_user(9) stageBoss="C.ROSY"}
}
else
{
timeline_position-=1
}

