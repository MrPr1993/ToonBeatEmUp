/// @description Freeze Player's Controls

if oControl.allPlayersMove
{
oPlayer.canControl=0
oPlayer.areaEntry=1

with oPlayer
{key_right=0 doubledash=0 dashing=0
}
with oControl {stageNext=rm_cutscene5a event_user(9) stageBoss="PRINCE"}
}
else
{
timeline_position-=1
}

