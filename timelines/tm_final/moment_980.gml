if oPlayer.ground=1 and oPlayer.atk=0 and oPlayer.dead=0 and oPlayer.hurt=0
{oControl.stageclearfakeout=2
oPlayer.canControl=0
oPlayer.areaEntry=1

with oPlayer
{key_right=0 doubledash=0 dashing=0
}
with oControl {oControl.stageNext=rm_cutscene8 event_user(9) stageBoss="VAN BAD"}
}
else
{
timeline_position-=1
}