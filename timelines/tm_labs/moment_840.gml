/// @description Freeze Player's Controls

if oControl.allPlayersMove
{
oPlayer.canControl=0
oPlayer.areaEntry=1

with oPlayer
{key_right=0 doubledash=0 dashing=0
}
with oControl {oControl.stageNext=rm_cutscene7 event_user(9) stageBoss="SCIENTIST"
	
if eventTimer=0 and eventTimerTick=0 {stageNext=rm_cutscenebadend finalStage=1}
	
	}
}
else
{
timeline_position-=1
}

