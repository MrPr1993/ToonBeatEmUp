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

//global.VanBadSceneNext

if global.StageSelect=1
{
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