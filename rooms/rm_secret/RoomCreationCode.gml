global.Continues=0
global.P1Life=0
global.P2Life=0
global.P3Life=0
global.P4Life=0

with oEnemySpawner {timeline=tm_secretboss event_user(0)}
oPlayer.canControl=0
oControl.stageNext=rm_menu
oControl.stagePause=1
oControl.StageNumber=1

oControl.showMap=0
global.HiScoreStage=-1

oControl.stagePause=1