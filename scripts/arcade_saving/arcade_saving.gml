// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function arcade_saving(_no){
if global.MenuGlobal=0 and global.SaveFileNO!=0
{
ini_open("GAMEDATA/arcade"+string(global.SaveFileNO)+".ini");
var stagenoset=_no//rm_opening;
if room=rm_stagefinal stagenoset=rm_opening
var stagesave=stage_check(stagenoset);
ini_write_string("SAVE","RMid", stagesave)
ini_write_real("SAVE", "ROOMID", stagenoset)
if room=rm_stagefinal global.SaveNumber=0
ini_write_real("SAVE", "ROOMID2", global.SaveNumber)
ini_write_real("SAVE", "P1L", global.P1Life)
ini_write_real("SAVE", "P2L", global.P2Life)
ini_write_real("SAVE", "P3L", global.P3Life)
ini_write_real("SAVE", "P4L", global.P4Life)
ini_write_real("SAVE", "P1S", global.P1Score)
ini_write_real("SAVE", "P2S", global.P2Score)
ini_write_real("SAVE", "P3S", global.P3Score)
ini_write_real("SAVE", "P4S", global.P4Score)
ini_write_real("SAVE", "P5S", global.P5Score)
ini_write_real("SAVE", "P1LS", global.P1ScoreLife)
ini_write_real("SAVE", "P2LS", global.P2ScoreLife)
ini_write_real("SAVE", "P3LS", global.P3ScoreLife)
ini_write_real("SAVE", "P4LS", global.P4ScoreLife)
ini_write_real("SAVE", "CONT", global.Continues)
ini_write_real("SAVE", "DIF", global.Difficulty)
ini_write_real("SAVE", "AND", global.ArcadeDeath)
ini_write_string("SAVE", "STG", global.SaveText)
ini_write_real("SAVE", "ASM", global.AllStageMode)

var _rep=1;
repeat(10)
{
ini_write_real("SAVE", "SR", global.StageRecord[_rep])
global.StageRecord[_rep]=ini_write_real("SAVE", "SR"+string(_rep), global.StageRecord[_rep])
_rep+=1;
}

ini_close()
}
}


function stage_globalcheck(){
switch(room)
{
case rm_opening: global.StageSave=rm_stage1 break;
//Stage 1
case rm_stage1: global.StageSave=rm_cutscene1 break;
//
case rm_stage2: global.StageSave=rm_cutscene2a break;
case rm_stage2b: global.StageSave=rm_cutscene2b break;
case rm_stage2c: global.StageSave=rm_cutscene2c break;
//
case rm_stage3: global.StageSave=rm_cutscene3a break;
case rm_stage4: global.StageSave=rm_cutscene3b break;
case rm_stage5: global.StageSave=rm_cutscene3c break;
//
case rm_stagecarnival: global.StageSave=rm_cutscene4a break;
case rm_stageswamp: global.StageSave=rm_cutscene4b break;
case rm_stagebeach: global.StageSave=rm_cutscene4c break;
//
case rm_stagemermaid: global.StageSave=rm_cutscene5a break;
case rm_stageufo: global.StageSave=rm_cutscene5b break;
case rm_stagedesert: global.StageSave=rm_cutscene5c break;
//
case rm_stagecave: global.StageSave=rm_cutscene6a break;
case rm_stagesnow: global.StageSave=rm_cutscene6b break;
case rm_stageclouds: global.StageSave=rm_cutscene6c break;
//
case rm_stagelab: global.StageSave=rm_cutscene7 break;
//
case rm_stagefinal: global.StageSave=rm_opening break;
}
}