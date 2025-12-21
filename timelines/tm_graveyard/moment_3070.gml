if oControl.allPlayersMove
{
oPlayer.areaEntry=1

with oPlayer
{key_right=0 doubledash=0 dashing=0
}
with oControl {stageNext=rm_cutscene3b event_user(9) stageBoss="ANNA MARI"}
}
else
{
timeline_position-=1
}