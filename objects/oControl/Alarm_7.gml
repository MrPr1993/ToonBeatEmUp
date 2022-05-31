/// @description Stage Clear or Hi Score
if isPaused=0
{
if finalStage=1
{
if global.StageSelect=0
{
if global.P1Score>=global.HiScore10 and keyToGameOver=0
{alarm[8]=0
hiScoreInput=0
hiScoreInputNum=1
continueScreen=3
hiScoreNameGet="A"
keyGet1="A"
keyGet2="A"
keyGet3="A"
finalStageEnd=1
}
else
{
stageEndFX=1
stageEnd=0
}
}
else
{
stageEndFX=1
stageEnd=0
}

}
else
{
stageEndFX=1
stageEnd=0
}
}
