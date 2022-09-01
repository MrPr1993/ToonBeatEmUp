musicplaystart(msc_stage1)
global.HiScoreStage=1
with oEnemySpawner {timeline=tm_stage1 event_user(0)}
oPlayer.canControl=0
oControl.stageNext=rm_cutscene1
oControl.stagePause=1
oControl.StageNumber=1
global.HiScoreLevel=1

with oControl
{
stagename="DOWNTOWN BEAT"

prevstagecheck1=0
prevstagecheck2=0
prevstagecheck3=0
stagecheck=1
}