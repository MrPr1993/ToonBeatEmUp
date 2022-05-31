// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hiscore_load(){
ini_open("GAMEDATA/hiscore.ini");

global.HiScoreName10=ini_read_string("HIGHSCORE10", "NAME", "DAN");
global.HiScore10=ini_read_real("HIGHSCORE10", "SCORE", 10000);
global.HiScoreFace10=ini_read_real("HIGHSCORE10", "FACE", 0);
global.HiScoreStage10=ini_read_real("HIGHSCORE10", "STAGE", 1);

global.HiScoreName9=ini_read_string("HIGHSCORE9", "NAME", "PR.");
global.HiScore9=ini_read_real("HIGHSCORE9", "SCORE", 20000);
global.HiScoreFace9=ini_read_real("HIGHSCORE9", "FACE", 1);
global.HiScoreStage9=ini_read_real("HIGHSCORE9", "STAGE", 1);

global.HiScoreName8=ini_read_string("HIGHSCORE8", "NAME", "BRG");
global.HiScore8=ini_read_real("HIGHSCORE8", "SCORE", 30000);
global.HiScoreFace8=ini_read_real("HIGHSCORE8", "FACE", 2);
global.HiScoreStage8=ini_read_real("HIGHSCORE8", "STAGE", 1);

global.HiScoreName7=ini_read_string("HIGHSCORE7", "NAME", "SOF");
global.HiScore7=ini_read_real("HIGHSCORE7", "SCORE", 40000);
global.HiScoreFace7=ini_read_real("HIGHSCORE7", "FACE", 3);
global.HiScoreStage7=ini_read_real("HIGHSCORE7", "STAGE", 2);

global.HiScoreName6=ini_read_string("HIGHSCORE6", "NAME", "BTI");
global.HiScore6=ini_read_real("HIGHSCORE6", "SCORE", 50000);
global.HiScoreFace6=ini_read_real("HIGHSCORE6", "FACE", 2);
global.HiScoreStage6=ini_read_real("HIGHSCORE6", "STAGE", 3);

global.HiScoreName5=ini_read_string("HIGHSCORE5", "NAME", "HIN");
global.HiScore5=ini_read_real("HIGHSCORE5", "SCORE", 60000);
global.HiScoreFace5=ini_read_real("HIGHSCORE5", "FACE", 1);
global.HiScoreStage5=ini_read_real("HIGHSCORE5", "STAGE", 4);

global.HiScoreName4=ini_read_string("HIGHSCORE4", "NAME", "VIV");
global.HiScore4=ini_read_real("HIGHSCORE4", "SCORE", 70000);
global.HiScoreFace4=ini_read_real("HIGHSCORE4", "FACE", 0);
global.HiScoreStage4=ini_read_real("HIGHSCORE4", "STAGE", 5);

global.HiScoreName3=ini_read_string("HIGHSCORE3", "NAME", "NEL");
global.HiScore3=ini_read_real("HIGHSCORE3", "SCORE", 80000);
global.HiScoreFace3=ini_read_real("HIGHSCORE3", "FACE", 2);
global.HiScoreStage3=ini_read_real("HIGHSCORE3", "STAGE", 6);

global.HiScoreName2=ini_read_string("HIGHSCORE2", "NAME", "BRY");
global.HiScore2=ini_read_real("HIGHSCORE2", "SCORE", 90000);
global.HiScoreFace2=ini_read_real("HIGHSCORE2", "FACE", 1);
global.HiScoreStage2=ini_read_real("HIGHSCORE2", "STAGE", 7);

global.HiScoreName1=ini_read_string("HIGHSCORE1", "NAME", "LOS");
global.HiScore1=ini_read_real("HIGHSCORE1", "SCORE", 100000);
global.HiScoreFace1=ini_read_real("HIGHSCORE1", "FACE", 0);
global.HiScoreStage1=ini_read_real("HIGHSCORE1", "STAGE", 8);



ini_close()
}