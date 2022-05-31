musicplaystart(-1)
global.HiScoreStage=1
with oEnemySpawner {timeline=tm_stage3 event_user(0)}
oPlayer.canControl=0
oPlayer.key_right=0

oControl.stageNext=rm_credits

oControl.stagePause=1

oControl.StageNumber=6
oControl.finalStage=1

global.HiScoreLevel=3
