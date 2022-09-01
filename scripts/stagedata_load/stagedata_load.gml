// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function stagedata_load(){
ini_open("GAMEDATA/stage.ini");

global.UnlockStage[1]=ini_read_real("STAGEdata", "S1a", 0);
global.LevelHiScore[1]=ini_read_real("STAGEdata", "S1b", 0);
global.UnlockStage[2]=ini_read_real("STAGEdata", "S2a", 0);
global.LevelHiScore[2]=ini_read_real("STAGEdata", "S2b", 0);
global.UnlockStage[3]=ini_read_real("STAGEdata", "S3a", 0);
global.LevelHiScore[3]=ini_read_real("STAGEdata", "S3b", 0);
global.UnlockStage[4]=ini_read_real("STAGEdata", "S4a", 0);
global.LevelHiScore[4]=ini_read_real("STAGEdata", "S4b", 0);
global.UnlockStage[5]=ini_read_real("STAGEdata", "S5a", 0);
global.LevelHiScore[5]=ini_read_real("STAGEdata", "S5b", 0);
global.UnlockStage[6]=ini_read_real("STAGEdata", "S6a", 0);
global.LevelHiScore[6]=ini_read_real("STAGEdata", "S6b", 0);
global.UnlockStage[7]=ini_read_real("STAGEdata", "S7a", 0);
global.LevelHiScore[7]=ini_read_real("STAGEdata", "S7b", 0);
global.UnlockStage[8]=ini_read_real("STAGEdata", "S8a", 0);
global.LevelHiScore[8]=ini_read_real("STAGEdata", "S8b", 0);
global.UnlockStage[9]=ini_read_real("STAGEdata", "S9a", 0);
global.LevelHiScore[9]=ini_read_real("STAGEdata", "S9b", 0);
global.UnlockStage[10]=ini_read_real("STAGEdata", "S10a", 0);
global.LevelHiScore[10]=ini_read_real("STAGEdata", "S10b", 0);
global.UnlockStage[11]=ini_read_real("STAGEdata", "S11a", 0);
global.LevelHiScore[11]=ini_read_real("STAGEdata", "S11b", 0);
global.UnlockStage[12]=ini_read_real("STAGEdata", "S12a", 0);
global.LevelHiScore[12]=ini_read_real("STAGEdata", "S12b", 0);
global.UnlockStage[13]=ini_read_real("STAGEdata", "S13a", 0);
global.LevelHiScore[13]=ini_read_real("STAGEdata", "S13b", 0);
global.UnlockStage[14]=ini_read_real("STAGEdata", "S14a", 0);
global.LevelHiScore[14]=ini_read_real("STAGEdata", "S14b", 0);
global.UnlockStage[15]=ini_read_real("STAGEdata", "S15a", 0);
global.LevelHiScore[15]=ini_read_real("STAGEdata", "S15b", 0);
global.UnlockStage[16]=ini_read_real("STAGEdata", "S16a", 0);
global.LevelHiScore[16]=ini_read_real("STAGEdata", "S16b", 0);
global.UnlockStage[17]=ini_read_real("STAGEdata", "S17a", 0);
global.LevelHiScore[17]=ini_read_real("STAGEdata", "S17b", 0);
global.UnlockStage[18]=ini_read_real("STAGEdata", "S18a", 0);
global.LevelHiScore[18]=ini_read_real("STAGEdata", "S18b", 0);
global.UnlockStage[19]=ini_read_real("STAGEdata", "S19a", 0);
global.LevelHiScore[19]=ini_read_real("STAGEdata", "S19b", 0);
global.UnlockStage[20]=ini_read_real("STAGEdata", "S20a", 0);
global.LevelHiScore[20]=ini_read_real("STAGEdata", "S20b", 0);



ini_close()
}