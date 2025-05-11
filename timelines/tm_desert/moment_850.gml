/// @description Freeze Player's Controls

if oControl.allPlayersMove
{
oPlayer.canControl=0
oPlayer.areaEntry=1

with oPlayer
{key_right=0 doubledash=0 dashing=0
}
with oControl {stageNext=rm_cutscene5c event_user(9) stageBoss="HAIFA"}
}
else
{
timeline_position-=1
}

