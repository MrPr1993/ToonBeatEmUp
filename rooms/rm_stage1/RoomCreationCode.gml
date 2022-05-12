musicplaystart(msc_stage1)
global.HiScoreStage=1
with oEnemySpawner {timeline=tm_stage1 event_user(0)}
oPlayer.canControl=0
oControl.stageNext=rm_stage2
oControl.stagePause=1
oControl.StageNumber=1
