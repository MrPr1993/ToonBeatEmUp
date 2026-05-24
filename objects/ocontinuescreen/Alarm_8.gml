/// @description Insert description here
// You can write your code in this editor

//global.P1Life=oPlayer.PlayerLife
//global.P1Score=oPlayer.PlayerScore
if global.AllStageMode=0
{
if room=rm_stage4 bonusstage=rm_eatinggame
if room=rm_stage3 bonusstage=rm_cargame
if room=rm_stage5 bonusstage=rm_brickbreak

if room=rm_stage4 or room=rm_stage3 or room=rm_stage5
global.VanBadSceneNext=rm_intermission1

if room=rm_stageufo bonusstage=rm_singgame
if room=rm_stagemermaid bonusstage=rm_hammergame
if room=rm_stagedesert bonusstage=rm_bullstage

if room=rm_stageufo or room=rm_stagemermaid or room=rm_stagedesert
global.VanBadSceneNext=rm_intermission2
}



if global.AllStageMode and global.StageClear=1
{
var stnext=rm_stage2
switch(room)
{
case rm_stage1: global.StageSave=rm_stage2 break;
case rm_stage2: global.StageSave=rm_stage2b break;
case rm_stage2b: global.StageSave=rm_stage2c break;
case rm_stage2c: global.StageSave=rm_stage3 break;
case rm_stage3: global.StageSave=rm_stage4 break;
case rm_stage4: global.StageSave=rm_stage5 break;
case rm_stage5: global.StageSave=rm_stagecarnival break;
case rm_stagecarnival: global.StageSave=rm_stageswamp break;
case rm_stageswamp: global.StageSave=rm_stagebeach break;
case rm_stagebeach: global.StageSave=rm_stagemermaid break;
case rm_stagemermaid: global.StageSave=rm_stageufo break;
case rm_stageufo: global.StageSave=rm_stagedesert break;
case rm_stagedesert: global.StageSave=rm_stagecave break;
case rm_stagecave: global.StageSave=rm_stagesnow break;
case rm_stagesnow: global.StageSave=rm_stageclouds break;
case rm_stageclouds: global.StageSave=rm_stagelab break;
case rm_stagelab: global.StageSave=rm_stagefinal break;
case rm_stagefinal: global.StageSave=rm_creditscene break;
}
stageNext=global.StageSave;
CutsceneStage=global.StageSave;

}

//global.VanBadSceneNext

if global.StageSelect=1
{
bonusstage=0;
if optionSelect=0
{
if global.IsMinigame=1 room_goto(rm_minigames)
room_goto(rm_map)
}
else
if bonusstage=0
room_goto(stageNext)
else {global.BonusStageNext=stageNext  room_goto(bonusstage)}
}
else
if bonusstage=0
room_goto(stageNext)
else {global.BonusStageNext=stageNext room_goto(bonusstage)}