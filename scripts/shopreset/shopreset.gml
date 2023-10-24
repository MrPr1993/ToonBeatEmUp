// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function shopreset(){
global.UnlockShop=1
global.UnlockAltPal=0
global.UnlockAltPal2=0
global.UnlockAltPal3=0

global.UnlockCharacterData=0

global.UnlockSoundTest=0
global.UnlockMovies=0

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

global.CheatPenalty=0;
var reseter=0;
repeat(17)
{
global.UnlockStageA[reseter]=0
global.Cheat[reseter]=0;
global.CheatUnlock[reseter]=0;
global.Gallery[reseter]=0;
global.GalleryUnlock[reseter]=0;
reseter+=1;
}


}