// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function data_setup(){
global.UnlockFeats=1

global.Feats=0;
global.Feats[100]=0;

global.Gold=0
global.UnlockStage=0
global.UnlockStage[20]=0
global.LevelHiScore=0
global.LevelHiScore[20]=0

global.UnlockStageA[1]=1
global.UnlockStageA[2]=1
global.UnlockStageA[3]=0
global.UnlockStageA[4]=0
global.UnlockStageA[5]=0
global.UnlockStageA[6]=0
global.UnlockStageA[7]=0
global.UnlockStageA[8]=0
global.UnlockStageA[9]=0
global.UnlockStageA[10]=0
global.UnlockStageA[11]=0
global.UnlockStageA[12]=0
global.UnlockStageA[13]=0
global.UnlockStageA[14]=0
global.UnlockStageA[15]=0
global.UnlockStageA[16]=0
global.UnlockStageA[17]=0
global.UnlockStageA[18]=0
global.UnlockStageA[19]=0
global.UnlockStageA[20]=0

global.UnlockStageB[1]=1
global.UnlockStageB[2]=1
global.UnlockStageB[3]=0
global.UnlockStageB[4]=0
global.UnlockStageB[5]=0
global.UnlockStageB[6]=0
global.UnlockStageB[7]=0
global.UnlockStageB[8]=0
global.UnlockStageB[9]=0
global.UnlockStageB[10]=0
global.UnlockStageB[11]=0
global.UnlockStageB[12]=0
global.UnlockStageB[13]=0
global.UnlockStageB[14]=0
global.UnlockStageB[15]=0
global.UnlockStageB[16]=0

global.UnlockStageC[1]=1
global.UnlockStageC[2]=1
global.UnlockStageC[3]=0
global.UnlockStageC[4]=0
global.UnlockStageC[5]=0
global.UnlockStageC[6]=0
global.UnlockStageC[7]=0
global.UnlockStageC[8]=0
global.UnlockStageC[9]=0
global.UnlockStageC[10]=0
global.UnlockStageC[11]=0
global.UnlockStageC[12]=0
global.UnlockStageC[13]=0
global.UnlockStageC[14]=0
global.UnlockStageC[15]=0
global.UnlockStageC[16]=0

global.HiScoreSurvival=0

global.HiScoreBossBattles=0
global.HiScoreBossBattlesScore=0
global.HiScoreFishing=0	
global.HiScoreMini1=0	
global.HiScoreMini2=0
global.HiScoreMini3=0
global.HiScoreMini4=0
global.HiScoreMini5=0
global.HiScoreMini6=0

global.ArenaType=0;
	
global.FishingUnlock=0;
global.SlotMachineUnlock=0;	
global.MiniGameUnlock1=0;
global.MiniGameUnlock2=0;
global.MiniGameUnlock3=0;
global.MiniGameUnlock4=0;
global.MiniGameUnlock5=0;
global.MiniGameUnlock6=0;
global.SurvivalUnlock=0;
global.BossBattleUnlock=0;

global.SkipDifficulty=0;
global.P1Only=0;

global.CheatPenalty=0;
global.Cheat=0;
global.Cheat[20]=0;

global.NoCheat=1;
global.CheatUnlock=0;
global.CheatUnlock[20]=0;

global.Gallery[20]=0;
global.GalleryUnlock[20]=0;

global.EnemyDeath=0
global.UnlockEnemy=0
global.UnlockEnemy[200]=0

feats_default()

shopreset()
}

function data_unlock(_no)
{
///Stages
if _no=1 or _no=0  for (var i=0; i<100; i++) {global.Feats[i]=1;}

///Minigames
if _no=2 or _no=0  for (var i=0; i<100; i++) {global.Feats[i]=1;}

///Feats
if _no=3 or _no=0 enemydata_unlockall()

///Feats
if _no=4 or _no=0 for (var i=0; i<100; i++) {global.Feats[i]=1;}

}